# frozen_string_literal: true

module Mailhub
  module Campaign
    module Types
      class CreateCampaignByCodeRequest < Internal::Types::Model
        field :name, -> { String }, optional: true, nullable: false

        field :subject, -> { String }, optional: true, nullable: false

        field :type, -> { Mailhub::Types::CampaignType }, optional: true, nullable: false

        field :from_email, -> { String }, optional: true, nullable: false, api_name: "fromEmail"

        field :segment_codes, -> { Internal::Types::Array[String] }, optional: true, nullable: false, api_name: "segmentCodes"

        field :media_codes, -> { Internal::Types::Array[String] }, optional: true, nullable: false, api_name: "mediaCodes"

        field :template_code, -> { String }, optional: true, nullable: false, api_name: "templateCode"

        field :body, -> { String }, optional: true, nullable: false

        field :send_at, -> { String }, optional: true, nullable: false, api_name: "sendAt"
      end
    end
  end
end
