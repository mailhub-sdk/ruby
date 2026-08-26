# frozen_string_literal: true

module Mailhub
  module Contact
    module Types
      class GetImportJobRequest < Internal::Types::Model
        field :job_id, -> { String }, optional: false, nullable: false, api_name: "jobId"
      end
    end
  end
end
