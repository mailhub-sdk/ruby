# frozen_string_literal: true

module Mailhub
  module Types
    # API 오류 응답
    class APIError < Internal::Types::Model
      field :code, -> { String }, optional: true, nullable: false

      field :status, -> { Integer }, optional: true, nullable: false

      field :message, -> { String }, optional: true, nullable: false

      field :errors, -> { Internal::Types::Array[Mailhub::Types::APIErrorDetail] }, optional: true, nullable: false
    end
  end
end
