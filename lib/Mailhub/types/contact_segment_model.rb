# frozen_string_literal: true

module Mailhub
  module Types
    # 연락처가 속한 세그먼트 정보
    class ContactSegmentModel < Internal::Types::Model
      field :code, -> { String }, optional: true, nullable: false

      field :name, -> { String }, optional: true, nullable: false
    end
  end
end
