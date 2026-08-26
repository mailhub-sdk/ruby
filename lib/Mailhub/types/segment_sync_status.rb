# frozen_string_literal: true

module Mailhub
  module Types
    module SegmentSyncStatus
      extend Mailhub::Internal::Types::Enum

      IDLE = "Idle"
      PROCESSING = "Processing"
      COMPLETED = "Completed"
      FAILED = "Failed"
    end
  end
end
