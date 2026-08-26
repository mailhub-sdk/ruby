# frozen_string_literal: true

module Mailhub
  module Types
    # 세그먼트 정보
    class SegmentModel < Internal::Types::Model
      field :code, -> { String }, optional: true, nullable: false

      field :name, -> { String }, optional: true, nullable: false

      field :filter, -> { Mailhub::Types::SegmentFilterModel }, optional: true, nullable: false

      field :contact_count, -> { Integer }, optional: true, nullable: false, api_name: "contactCount"

      field :last_synced_at, -> { String }, optional: true, nullable: false, api_name: "lastSyncedAt"

      field :sync_status, -> { Mailhub::Types::SegmentSyncStatus }, optional: true, nullable: false, api_name: "syncStatus"

      field :sync_started_at, -> { String }, optional: true, nullable: false, api_name: "syncStartedAt"

      field :sync_completed_at, -> { String }, optional: true, nullable: false, api_name: "syncCompletedAt"

      field :sync_error, -> { String }, optional: true, nullable: false, api_name: "syncError"

      field :created_at, -> { String }, optional: true, nullable: false, api_name: "createdAt"

      field :updated_at, -> { String }, optional: true, nullable: false, api_name: "updatedAt"
    end
  end
end
