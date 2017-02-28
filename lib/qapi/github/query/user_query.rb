
module Qapi::Github
  class UserQuery < Qapi::Query

    def _me
      response = @connection.get("/user")
      User.new(@connection, JSON(response.body))
    end

    def me
      prom = promise do |conn|
        JSON(conn.get("/user"))
      end
      p prom.resolve
      User.new(@connection, prom.resolve)
    end

    def find(login)
      response = @connection.get("/users/#{login}")
      User.new(@connection, JSON(response.body))
    end
  end
end
