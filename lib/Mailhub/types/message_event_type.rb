# frozen_string_literal: true

module Mailhub
  module Types
    module MessageEventType
      extend Mailhub::Internal::Types::Enum

      SCHEDULED = "Scheduled"
      SENT = "Sent"
      DELIVERED = "Delivered"
      OPENED = "Opened"
      CLICKED = "Clicked"
      BOUNCED = "Bounced"
      FAILED = "Failed"
      HELD = "Held"
    end
  end
end
