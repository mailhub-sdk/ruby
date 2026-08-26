# frozen_string_literal: true

module Mailhub
  module Types
    # 캠페인에 첨부된 미디어 정보
    class CampaignMediaModel < Internal::Types::Model
      field :media_code, -> { String }, optional: true, nullable: false, api_name: "mediaCode"

      field :file_name, -> { String }, optional: true, nullable: false, api_name: "fileName"

      field :content_type, -> { String }, optional: true, nullable: false, api_name: "contentType"

      field :size, -> { Integer }, optional: true, nullable: false

      field :created_at, -> { String }, optional: true, nullable: false, api_name: "createdAt"
    end
  end
end
