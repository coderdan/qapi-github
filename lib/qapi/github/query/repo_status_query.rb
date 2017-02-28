
module Qapi::Github
  class RepoStatusQuery < Qapi::Query
    def all(repo, ref: 'master')
      response = @connection.get("/repos/#{repo}/commits/#{ref}/statuses")
      p JSON(response.body)
      JSON(response.body).map do |object|
        RepoStatus.new(@connection, object)
      end
    end
  end
end
