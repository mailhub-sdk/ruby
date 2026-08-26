# frozen_string_literal: true

module Mailhub
  module Segment
    module Types
      class GetSegmentRequest < Internal::Types::Model
        field :code, -> { String }, optional: false, nullable: false
      end
    end
  end
end
