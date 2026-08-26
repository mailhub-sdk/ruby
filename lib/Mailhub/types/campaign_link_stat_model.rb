# frozen_string_literal: true

module Mailhub
  module Types
    # 캠페인 본문 내 링크별 클릭 통계
    class CampaignLinkStatModel < Internal::Types::Model
      field :url, -> { String }, optional: true, nullable: false

      field :clicks, -> { Integer }, optional: true, nullable: false

      field :unique_clicks, -> { Integer }, optional: true, nullable: false, api_name: "uniqueClicks"
    end
  end
end
