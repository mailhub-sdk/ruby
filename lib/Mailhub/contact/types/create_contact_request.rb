# frozen_string_literal: true

module Mailhub
  module Contact
    module Types
      class CreateContactRequest < Internal::Types::Model
        field :email, -> { String }, optional: true, nullable: false

        field :name, -> { String }, optional: true, nullable: false

        field :fields, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false
      end
    end
  end
end
