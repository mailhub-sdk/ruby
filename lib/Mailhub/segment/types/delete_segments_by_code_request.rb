# frozen_string_literal: true

module Mailhub
  module Segment
    module Types
      class DeleteSegmentsByCodeRequest < Internal::Types::Model
        field :all, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :codes, -> { Internal::Types::Array[String] }, optional: true, nullable: false
      end
    end
  end
end
