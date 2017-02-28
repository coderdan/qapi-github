module Qapi
  module Github
    class Connection < Qapi::Connection::Oauth
      self.site = "https://api.github.com"
      
      def users
        Qapi::Github::UserQuery.new(self)
      end

      def repos
        Qapi::Github::RepoQuery.new(self)
      end

      # FIXME: This should really hang off repo but because we can't do lazy loading
      # and don't have permission to load a repo with some scopes this won't work now
      def repo_status
        Qapi::Github::RepoStatusQuery.new(self)
      end

      # FIXME: This could hang off repo too
      def pull_requests
        Qapi::Github::PullRequestQuery.new(self)
      end
    end
  end
end
