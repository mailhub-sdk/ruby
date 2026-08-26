# frozen_string_literal: true

module Mailhub
  module Media
    module Types
      class GetMediaRequest < Internal::Types::Model
        field :code, -> { String }, optional: false, nullable: false
      end
    end
  end
end
