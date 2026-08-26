# frozen_string_literal: true

module Mailhub
  module Types
    # 세그먼트 필터 (그룹 간은 OR로 결합)
    class SegmentFilterModel < Internal::Types::Model
      field :groups, -> { Internal::Types::Array[Mailhub::Types::SegmentFilterGroupModel] }, optional: true, nullable: false
    end
  end
end
