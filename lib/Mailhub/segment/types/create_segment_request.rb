# frozen_string_literal: true

module Mailhub
  module Segment
    module Types
      class CreateSegmentRequest < Internal::Types::Model
        field :name, -> { String }, optional: true, nullable: false

        field :filter, -> { Mailhub::Types::SegmentFilterModel }, optional: true, nullable: false
      end
    end
  end
end
