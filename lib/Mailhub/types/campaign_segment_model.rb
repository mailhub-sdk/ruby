# frozen_string_literal: true

module Mailhub
  module Types
    # 캠페인의 대상 세그먼트 정보
    class CampaignSegmentModel < Internal::Types::Model
      field :code, -> { String }, optional: true, nullable: false

      field :name, -> { String }, optional: true, nullable: false
    end
  end
end
