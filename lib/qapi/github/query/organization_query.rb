
module Qapi::Github
  class OrganizationQuery < Qapi::Query

    def find(id, options = {})
      response = @connection.get("/orgs/#{id}", options)
      Organization.new(@connection, JSON(response.body))
    end
  end
end
