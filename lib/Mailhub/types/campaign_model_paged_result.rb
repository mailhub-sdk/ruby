# frozen_string_literal: true

module Mailhub
  module Types
    # 페이지네이션 목록 결과
    class CampaignModelPagedResult < Internal::Types::Model
      field :page_index, -> { Integer }, optional: true, nullable: false, api_name: "pageIndex"

      field :page_size, -> { Integer }, optional: true, nullable: false, api_name: "pageSize"

      field :total_count, -> { Integer }, optional: true, nullable: false, api_name: "totalCount"

      field :items, -> { Internal::Types::Array[Mailhub::Types::CampaignModel] }, optional: true, nullable: false
    end
  end
end
