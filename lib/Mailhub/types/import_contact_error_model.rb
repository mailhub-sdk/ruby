# frozen_string_literal: true

module Mailhub
  module Types
    # 연락처 가져오기 중 발생한 행 단위 오류
    class ImportContactErrorModel < Internal::Types::Model
      field :row, -> { Integer }, optional: true, nullable: false

      field :message, -> { String }, optional: true, nullable: false
    end
  end
end
