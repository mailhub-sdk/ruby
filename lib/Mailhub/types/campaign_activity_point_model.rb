# frozen_string_literal: true

module Mailhub
  module Types
    # 캠페인 활동 추이의 시점별 통계
    class CampaignActivityPointModel < Internal::Types::Model
      field :timestamp, -> { String }, optional: true, nullable: false

      field :sent, -> { Integer }, optional: true, nullable: false

      field :opens, -> { Integer }, optional: true, nullable: false

      field :clicks, -> { Integer }, optional: true, nullable: false

      field :bounced, -> { Integer }, optional: true, nullable: false
    end
  end
end
