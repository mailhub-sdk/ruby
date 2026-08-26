# frozen_string_literal: true

module Mailhub
  module Campaign
    module Types
      class GetCampaignsRequest < Internal::Types::Model
        field :search, -> { String }, optional: true, nullable: false

        field :status, -> { Mailhub::Types::CampaignStatus }, optional: true, nullable: false

        field :sort_by, -> { String }, optional: true, nullable: false, api_name: "sortBy"

        field :sort_direction, -> { String }, optional: true, nullable: false, api_name: "sortDirection"

        field :page_size, -> { Integer }, optional: true, nullable: false, api_name: "pageSize"

        field :page_index, -> { Integer }, optional: true, nullable: false, api_name: "pageIndex"
      end
    end
  end
end
