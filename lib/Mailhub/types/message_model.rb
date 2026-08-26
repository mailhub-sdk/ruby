# frozen_string_literal: true

module Mailhub
  module Types
    # 발송 이력 모델
    class MessageModel < Internal::Types::Model
      field :guid, -> { String }, optional: true, nullable: false

      field :to_email, -> { String }, optional: true, nullable: false, api_name: "toEmail"

      field :from_email, -> { String }, optional: true, nullable: false, api_name: "fromEmail"

      field :subject, -> { String }, optional: true, nullable: false

      field :body, -> { String }, optional: true, nullable: false

      field :plain_text, -> { String }, optional: true, nullable: false, api_name: "plainText"

      field :status, -> { String }, optional: true, nullable: false

      field :scheduled_at, -> { String }, optional: true, nullable: false, api_name: "scheduledAt"

      field :error_message, -> { String }, optional: true, nullable: false, api_name: "errorMessage"

      field :bounce_reason, -> { String }, optional: true, nullable: false, api_name: "bounceReason"

      field :bounce_message, -> { String }, optional: true, nullable: false, api_name: "bounceMessage"

      field :provider_message_id, -> { String }, optional: true, nullable: false, api_name: "providerMessageId"

      field :attempt_count, -> { Integer }, optional: true, nullable: false, api_name: "attemptCount"

      field :last_attempted_at, -> { String }, optional: true, nullable: false, api_name: "lastAttemptedAt"

      field :created_at, -> { String }, optional: true, nullable: false, api_name: "createdAt"

      field :sent_at, -> { String }, optional: true, nullable: false, api_name: "sentAt"
    end
  end
end
