# frozen_string_literal: true

module Mailhub
  module Internal
    module Types
      module Unknown
        include Mailhub::Internal::Types::Type

        def coerce(value)
          value
        end
      end
    end
  end
end
