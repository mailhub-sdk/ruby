# frozen_string_literal: true

module Mailhub
  module CustomField
    module Types
      class DeleteCustomFieldRequest < Internal::Types::Model
        field :key, -> { String }, optional: false, nullable: false
      end
    end
  end
end
