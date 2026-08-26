# frozen_string_literal: true

module Mailhub
  module Campaign
    module Types
      class TestCampaignByCodeRequest < Internal::Types::Model
        field :code, -> { String }, optional: false, nullable: false

        field :name, -> { String }, optional: true, nullable: false

        field :subject, -> { String }, optional: true, nullable: false

        field :from_email, -> { String }, optional: true, nullable: false, api_name: "fromEmail"

        field :body, -> { String }, optional: true, nullable: false

        field :template_code, -> { String }, optional: true, nullable: false, api_name: "templateCode"

        field :contacts, -> { Internal::Types::Array[String] }, optional: true, nullable: false
      end
    end
  end
end
