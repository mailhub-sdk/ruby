# frozen_string_literal: true

module Mailhub
  module CustomField
    module Types
      class CreateCustomFieldRequest < Internal::Types::Model
        field :key, -> { String }, optional: true, nullable: false

        field :name, -> { String }, optional: true, nullable: false

        field :type, -> { Mailhub::Types::CustomFieldType }, optional: true, nullable: false
      end
    end
  end
end
