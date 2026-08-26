# frozen_string_literal: true

module Mailhub
  module Segment
    module Types
      class GetSegmentPreviewRequest < Internal::Types::Model
        field :filter, -> { Mailhub::Types::SegmentFilterModel }, optional: true, nullable: false
      end
    end
  end
end
