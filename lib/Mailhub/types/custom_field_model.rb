# frozen_string_literal: true

module Mailhub
  module Types
    # 커스텀 필드 정보
    class CustomFieldModel < Internal::Types::Model
      field :key, -> { String }, optional: true, nullable: false

      field :name, -> { String }, optional: true, nullable: false

      field :type, -> { Mailhub::Types::CustomFieldType }, optional: true, nullable: false

      field :created_at, -> { String }, optional: true, nullable: false, api_name: "createdAt"

      field :updated_at, -> { String }, optional: true, nullable: false, api_name: "updatedAt"
    end
  end
end
