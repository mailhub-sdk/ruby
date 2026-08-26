# frozen_string_literal: true

module Mailhub
  module Types
    module CustomFieldType
      extend Mailhub::Internal::Types::Enum

      TEXT = "Text"
      NUMBER = "Number"
      BOOLEAN = "Boolean"
      DATE = "Date"
    end
  end
end
