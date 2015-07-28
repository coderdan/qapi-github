module Qapi::Github
  class User < Qapi::Model
    attribute :login
    attribute :id
    attribute :avatar_url
    attribute :url
    attribute :html_url
    attribute :followers_url
    attribute :following_url
    attribute :gists_url
    attribute :starred_url
    attribute :subscriptions_url
    attribute :organizations_url
    attribute :repos_url
    attribute :events_url
    attribute :received_events_url
    attribute :site_admin
    attribute :name
    attribute :company
    attribute :blog
    attribute :location
    attribute :email
    attribute :hireable
    attribute :bio
    attribute :public_repos
    attribute :public_gists
    attribute :followers
    attribute :following
    attribute :created_at
    attribute :updated_at
    attribute :total_private_repos
    attribute :owned_private_repos
    attribute :private_gists
    attribute :disk_usage
    attribute :collaborators
  end
end
