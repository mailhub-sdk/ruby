# frozen_string_literal: true

module Mailhub
  module Contact
    module Types
      class DeleteContactsByGUIDRequest < Internal::Types::Model
        field :guids, -> { Internal::Types::Array[String] }, optional: true, nullable: false
      end
    end
  end
end
