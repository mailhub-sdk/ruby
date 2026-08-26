# frozen_string_literal: true

module Mailhub
  module Types
    # 세그먼트 필터의 단일 조건 규칙
    class SegmentFilterRuleModel < Internal::Types::Model
      field :field, -> { String }, optional: true, nullable: false

      field :operator, -> { String }, optional: true, nullable: false

      field :value, -> { String }, optional: true, nullable: false
    end
  end
end
