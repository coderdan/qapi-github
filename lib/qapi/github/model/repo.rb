module Qapi::Github
  # TODO: Can we handle nested models? e.g. for owner
  # TODO: We could infer these from the JSON body like ActiveRecord does for DB columns
  class Repo < Qapi::Model
    attribute :id
    attribute :name
    attribute :full_name
    attribute :description
  end
end
