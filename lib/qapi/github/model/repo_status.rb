module Qapi::Github
  class RepoStatus < Qapi::Model
    attribute :id
    attribute :state
    attribute :context
    attribute :description
    attribute :target_url
  end
end
