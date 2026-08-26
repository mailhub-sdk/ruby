# frozen_string_literal: true

module Mailhub
  module Message
    module Types
      class GetMessageRequest < Internal::Types::Model
        field :guid, -> { String }, optional: false, nullable: false
      end
    end
  end
end
