module Qapi
  module Github
    class Connection < Qapi::Connection
      self.site = "https://api.github.com"

      def users
        Qapi::Github::UserQuery.new(self)
      end
    end
  end
end
