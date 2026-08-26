# frozen_string_literal: true

module Mailhub
  module Types
    # 세그먼트 필터의 규칙 그룹 (그룹 내 규칙은 AND로 결합)
    class SegmentFilterGroupModel < Internal::Types::Model
      field :operator, -> { String }, optional: true, nullable: false

      field :rules, -> { Internal::Types::Array[Mailhub::Types::SegmentFilterRuleModel] }, optional: true, nullable: false
    end
  end
end
