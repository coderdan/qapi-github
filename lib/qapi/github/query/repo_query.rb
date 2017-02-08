
module Qapi::Github
  class RepoQuery < Qapi::Query

    # TODO: Handle pagination gracefully with like a find_each style approach
    # See https://developer.github.com/guides/traversing-with-pagination/
    def mine
      response = @connection.get("/user/repos", per_page: 100, affiliation: 'owner,collaborator,organization_member')
      JSON(response.body).map do |object|
        Repo.new(@connection, object)
      end
    end

    # TODO: We could make this evaluate lazily so that if we chain methods we
    # don't make unnecessary calls
    def find(slug)
      response = @connection.get("/repos/#{slug}")
      Repo.new(@connection, JSON(response.body))
    end
  end
end
