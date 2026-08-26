# frozen_string_literal: true

module Mailhub
  module Template
    module Types
      class CreateTemplateRequest < Internal::Types::Model
        field :name, -> { String }, optional: true, nullable: false

        field :body, -> { String }, optional: true, nullable: false

        field :editor_type, -> { Mailhub::Types::EditorType }, optional: true, nullable: false, api_name: "editorType"

        field :editor_source, -> { String }, optional: true, nullable: false, api_name: "editorSource"
      end
    end
  end
end
