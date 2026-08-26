# frozen_string_literal: true

module Mailhub
  module Types
    # 필드 단위 오류 상세
    class APIErrorDetail < Internal::Types::Model
      field :field, -> { String }, optional: true, nullable: false

      field :message, -> { String }, optional: true, nullable: false
    end
  end
end
