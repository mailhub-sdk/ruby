# frozen_string_literal: true

module Mailhub
  module Types
    # 연락처 가져오기 작업 진행 상태
    class ContactImportJobModel < Internal::Types::Model
      field :job_id, -> { String }, optional: true, nullable: false, api_name: "jobId"

      field :status, -> { Mailhub::Types::ContactImportStatus }, optional: true, nullable: false

      field :total_rows, -> { Integer }, optional: true, nullable: false, api_name: "totalRows"

      field :processed_rows, -> { Integer }, optional: true, nullable: false, api_name: "processedRows"

      field :imported_count, -> { Integer }, optional: true, nullable: false, api_name: "importedCount"

      field :updated_count, -> { Integer }, optional: true, nullable: false, api_name: "updatedCount"

      field :errors, -> { Internal::Types::Array[Mailhub::Types::ImportContactErrorModel] }, optional: true, nullable: false
    end
  end
end
