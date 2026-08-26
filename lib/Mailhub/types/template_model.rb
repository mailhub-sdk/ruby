# frozen_string_literal: true

module Mailhub
  module Types
    # 템플릿 정보
    class TemplateModel < Internal::Types::Model
      field :name, -> { String }, optional: true, nullable: false

      field :code, -> { String }, optional: true, nullable: false

      field :body, -> { String }, optional: true, nullable: false

      field :editor_type, -> { Mailhub::Types::EditorType }, optional: true, nullable: false, api_name: "editorType"

      field :editor_source, -> { String }, optional: true, nullable: false, api_name: "editorSource"

      field :created_at, -> { String }, optional: true, nullable: false, api_name: "createdAt"

      field :updated_at, -> { String }, optional: true, nullable: false, api_name: "updatedAt"
    end
  end
end
