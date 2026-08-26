# frozen_string_literal: true

module Mailhub
  module Types
    module CampaignStatus
      extend Mailhub::Internal::Types::Enum

      DRAFT = "Draft"
      SCHEDULED = "Scheduled"
      PREPARE = "Prepare"
      RUNNING = "Running"
      PAUSED = "Paused"
      FINISHED = "Finished"
      CANCELLED = "Cancelled"
    end
  end
end
