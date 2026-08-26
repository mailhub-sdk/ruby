# frozen_string_literal: true

module Mailhub
  module Campaign
    module Types
      class GetCampaignRequest < Internal::Types::Model
        field :code, -> { String }, optional: false, nullable: false
      end
    end
  end
end
