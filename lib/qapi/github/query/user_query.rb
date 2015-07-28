
module Qapi::Github
  class UserQuery < Qapi::Query

    def me
      response = @connection.get("/user")
      User.new(@connection, JSON(response.body))
    end
  end
end
