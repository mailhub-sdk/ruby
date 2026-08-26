# frozen_string_literal: true

module Mailhub
  module Message
    module Types
      class SendMessageRequest < Internal::Types::Model
        field :to_email, -> { String }, optional: true, nullable: false, api_name: "toEmail"

        field :from_email, -> { String }, optional: true, nullable: false, api_name: "fromEmail"

        field :subject, -> { String }, optional: true, nullable: false

        field :body, -> { String }, optional: true, nullable: false

        field :template_code, -> { String }, optional: true, nullable: false, api_name: "templateCode"

        field :template_data, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false, api_name: "templateData"

        field :send_at, -> { String }, optional: true, nullable: false, api_name: "sendAt"
      end
    end
  end
end
