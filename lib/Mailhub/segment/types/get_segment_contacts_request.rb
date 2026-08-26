# frozen_string_literal: true

module Mailhub
  module Segment
    module Types
      class GetSegmentContactsRequest < Internal::Types::Model
        field :filter, -> { Mailhub::Types::SegmentFilterModel }, optional: true, nullable: false

        field :page_index, -> { Integer }, optional: true, nullable: false, api_name: "pageIndex"

        field :page_size, -> { Integer }, optional: true, nullable: false, api_name: "pageSize"
      end
    end
  end
end
