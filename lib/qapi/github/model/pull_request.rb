module Qapi::Github
  class PullRequest < Qapi::Model
    attribute :id
    attribute :url
    attribute :number
    attribute :state
    attribute :title
    # TODO: We get a status_url in the GH response, would be great if we can load status objects based on that
    attribute :statuses_url
    attribute :comments_url
  end
end
