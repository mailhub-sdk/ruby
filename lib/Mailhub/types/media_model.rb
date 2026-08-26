# frozen_string_literal: true

module Mailhub
  module Types
    # 미디어 정보
    class MediaModel < Internal::Types::Model
      field :guid, -> { String }, optional: true, nullable: false

      field :code, -> { String }, optional: true, nullable: false

      field :provider, -> { String }, optional: true, nullable: false

      field :original_file_name, -> { String }, optional: true, nullable: false, api_name: "originalFileName"

      field :stored_file_name, -> { String }, optional: true, nullable: false, api_name: "storedFileName"

      field :content_type, -> { String }, optional: true, nullable: false, api_name: "contentType"

      field :size, -> { Integer }, optional: true, nullable: false

      field :storage_path, -> { String }, optional: true, nullable: false, api_name: "storagePath"

      field :url, -> { String }, optional: true, nullable: false

      field :created_at, -> { String }, optional: true, nullable: false, api_name: "createdAt"
    end
  end
end
