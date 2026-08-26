# frozen_string_literal: true

module Mailhub
  module Campaign
    module Types
      class PreviewCampaignRequest < Internal::Types::Model
        field :code, -> { String }, optional: false, nullable: false
      end
    end
  end
end
