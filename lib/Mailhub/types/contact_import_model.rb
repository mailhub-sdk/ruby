# frozen_string_literal: true

module Mailhub
  module Types
    # 연락처 가져오기 작업 접수 결과
    class ContactImportModel < Internal::Types::Model
      field :job_id, -> { String }, optional: true, nullable: false, api_name: "jobId"
    end
  end
end
