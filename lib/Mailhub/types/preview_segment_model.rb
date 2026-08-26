# frozen_string_literal: true

module Mailhub
  module Types
    # 세그먼트 필터 미리보기 결과
    class PreviewSegmentModel < Internal::Types::Model
      field :count, -> { Integer }, optional: true, nullable: false
    end
  end
end
