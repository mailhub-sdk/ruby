# frozen_string_literal: true

module Mailhub
  module Contact
    module Types
      class DeleteContactRequest < Internal::Types::Model
        field :guid, -> { String }, optional: false, nullable: false
      end
    end
  end
end
