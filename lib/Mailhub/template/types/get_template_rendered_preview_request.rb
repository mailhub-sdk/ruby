# frozen_string_literal: true

module Mailhub
  module Template
    module Types
      class GetTemplateRenderedPreviewRequest < Internal::Types::Model
        field :body, -> { String }, optional: true, nullable: false
      end
    end
  end
end
