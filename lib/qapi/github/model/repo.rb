module Qapi::Github
  # TODO: Can we handle nested models? e.g. for owner
  # TODO: We could infer these from the JSON body like ActiveRecord does for DB columns
  class Repo < Qapi::Model
    def pull_requests
      # TODO: We could curry the methods here some how
      PullRequestQuery.for(self.full_name).new(connection)
      # Or maybe we could do PullRequestQuery.for(self.full_name).new(connection)
    end
  end
end
