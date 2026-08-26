# frozen_string_literal: true

module Mailhub
  module Media
    module Types
      class UpdateMediaRequest < Internal::Types::Model
        field :code, -> { String }, optional: false, nullable: false

        field :original_file_name, -> { String }, optional: true, nullable: false, api_name: "originalFileName"
      end
    end
  end
end
