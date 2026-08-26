# frozen_string_literal: true

module Mailhub
  module Types
    # 발송 중인 캠페인의 실시간 통계
    class RunningCampaignStatsModel < Internal::Types::Model
      field :campaign_id, -> { Integer }, optional: true, nullable: false, api_name: "campaignId"

      field :campaign_code, -> { String }, optional: true, nullable: false, api_name: "campaignCode"

      field :name, -> { String }, optional: true, nullable: false

      field :status, -> { Mailhub::Types::CampaignStatus }, optional: true, nullable: false

      field :to_send, -> { Integer }, optional: true, nullable: false, api_name: "toSend"

      field :sent, -> { Integer }, optional: true, nullable: false

      field :send_rate, -> { Integer }, optional: true, nullable: false, api_name: "sendRate"

      field :send_rate_per_minute, -> { Integer }, optional: true, nullable: false, api_name: "sendRatePerMinute"

      field :remaining, -> { Integer }, optional: true, nullable: false

      field :estimated_remaining_seconds, -> { Integer }, optional: true, nullable: false, api_name: "estimatedRemainingSeconds"

      field :runtime_reason, -> { String }, optional: true, nullable: false, api_name: "runtimeReason"

      field :runtime_message, -> { String }, optional: true, nullable: false, api_name: "runtimeMessage"
    end
  end
end
