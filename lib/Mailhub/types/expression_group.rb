# frozen_string_literal: true

module Mailhub
  module Types
    module ExpressionGroup
      extend Mailhub::Internal::Types::Enum

      CONTACT = "Contact"
      CAMPAIGN = "Campaign"
      LINK = "Link"
    end
  end
end
