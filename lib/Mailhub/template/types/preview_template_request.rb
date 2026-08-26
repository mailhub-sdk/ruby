# frozen_string_literal: true

module Mailhub
  module Template
    module Types
      class PreviewTemplateRequest < Internal::Types::Model
        field :code, -> { String }, optional: false, nullable: false
      end
    end
  end
end
