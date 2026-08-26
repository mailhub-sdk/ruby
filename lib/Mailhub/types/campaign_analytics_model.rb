# frozen_string_literal: true

module Mailhub
  module Types
    # 캠페인 성과 분석 통계
    class CampaignAnalyticsModel < Internal::Types::Model
      field :campaign_id, -> { Integer }, optional: true, nullable: false, api_name: "campaignId"

      field :campaign_code, -> { String }, optional: true, nullable: false, api_name: "campaignCode"

      field :sent, -> { Integer }, optional: true, nullable: false

      field :views, -> { Integer }, optional: true, nullable: false

      field :unique_views, -> { Integer }, optional: true, nullable: false, api_name: "uniqueViews"

      field :clicks, -> { Integer }, optional: true, nullable: false

      field :unique_clicks, -> { Integer }, optional: true, nullable: false, api_name: "uniqueClicks"

      field :open_rate, -> { Integer }, optional: true, nullable: false, api_name: "openRate"

      field :unique_open_rate, -> { Integer }, optional: true, nullable: false, api_name: "uniqueOpenRate"

      field :click_rate, -> { Integer }, optional: true, nullable: false, api_name: "clickRate"

      field :unique_click_rate, -> { Integer }, optional: true, nullable: false, api_name: "uniqueClickRate"
    end
  end
end
