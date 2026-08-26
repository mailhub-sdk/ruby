# frozen_string_literal: true

module Mailhub
  module Types
    # 템플릿에서 사용 가능한 치환 표현식 정보
    class TemplateExpressionModel < Internal::Types::Model
      field :key, -> { String }, optional: true, nullable: false

      field :label, -> { String }, optional: true, nullable: false

      field :description, -> { String }, optional: true, nullable: false

      field :group, -> { Mailhub::Types::ExpressionGroup }, optional: true, nullable: false
    end
  end
end
