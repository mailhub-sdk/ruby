# frozen_string_literal: true

module Mailhub
  module Types
    module CampaignType
      extend Mailhub::Internal::Types::Enum

      MARKETING = "Marketing"
      OPERATIONAL = "Operational"
    end
  end
end
