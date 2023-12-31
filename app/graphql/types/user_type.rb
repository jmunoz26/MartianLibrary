# frozen_string_literal: true

module Types
  class UserType < Types::BaseObject
    field :id, ID, null: false
    field :email, String, null: false
    field :full_name, String, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false

    def full_name
      # `object` references the user instance
      # [object.first_name, object.last_name].compact.join(" ")
      `#{object.first_name} #{object.last_name}`
    end
  end
end
