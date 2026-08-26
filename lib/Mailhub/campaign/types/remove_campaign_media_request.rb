# frozen_string_literal: true

module Mailhub
  module Campaign
    module Types
      class RemoveCampaignMediaRequest < Internal::Types::Model
        field :code, -> { String }, optional: false, nullable: false

        field :media_code, -> { String }, optional: false, nullable: false, api_name: "mediaCode"
      end
    end
  end
end
