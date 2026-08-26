# frozen_string_literal: true

module Mailhub
  module Types
    # 메시지 타임라인의 이벤트 하나
    class MessageEventModel < Internal::Types::Model
      field :type, -> { Mailhub::Types::MessageEventType }, optional: true, nullable: false

      field :occurred_at, -> { String }, optional: true, nullable: false, api_name: "occurredAt"

      field :url, -> { String }, optional: true, nullable: false

      field :detail, -> { String }, optional: true, nullable: false
    end
  end
end
