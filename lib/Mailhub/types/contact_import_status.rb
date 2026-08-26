# frozen_string_literal: true

module Mailhub
  module Types
    module ContactImportStatus
      extend Mailhub::Internal::Types::Enum

      PENDING = "Pending"
      PROCESSING = "Processing"
      COMPLETED = "Completed"
      FAILED = "Failed"
    end
  end
end
