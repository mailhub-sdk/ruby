# frozen_string_literal: true

module Mailhub
  module Types
    module ContactStatus
      extend Mailhub::Internal::Types::Enum

      ENABLED = "Enabled"
      BLOCKED = "Blocked"
      UNSUBSCRIBED = "Unsubscribed"
    end
  end
end
