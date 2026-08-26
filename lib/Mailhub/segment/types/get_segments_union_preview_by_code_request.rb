# frozen_string_literal: true

module Mailhub
  module Segment
    module Types
      class GetSegmentsUnionPreviewByCodeRequest < Internal::Types::Model
        field :segment_codes, -> { Internal::Types::Array[String] }, optional: true, nullable: false, api_name: "segmentCodes"
      end
    end
  end
end
