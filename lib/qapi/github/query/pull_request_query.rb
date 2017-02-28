
module Qapi::Github
  class PullRequestQuery < Qapi::Query

    def self.for(*args)
      parent = self
      # TODO: Make this extend from a CurriedQuery class or something
      klass = Class.new do
        def initialize(connection)
          @parent = self.parent.new(connection)
        end

        def method_missing(name, *args, &block)
          @parent.send(name, *bind(args))
        end

        def bind(args)
          bindings.concat(args)
        end
      end
      klass.send(:define_method, :bindings) { args }
      klass.send(:define_method, :parent)   { parent }
      klass
    end

    def for(*args)
      @curry_with = args
      self
    end

    # TODO: Must be a better way, use the curry method on 'method' perhaps?
    # This means we'd need to wrap this stuff
    def all(slug = @curry_with[0])
      response = @connection.get("/repos/#{slug}/pulls", per_page: 100)
      PullRequest.parse(@connection, response.body)
    end
  end
end
