# frozen_string_literal: true

module Mailhub
  module Types
    # 캠페인 정보
    class CampaignModel < Internal::Types::Model
      field :code, -> { String }, optional: true, nullable: false

      field :name, -> { String }, optional: true, nullable: false

      field :subject, -> { String }, optional: true, nullable: false

      field :type, -> { Mailhub::Types::CampaignType }, optional: true, nullable: false

      field :from_email, -> { String }, optional: true, nullable: false, api_name: "fromEmail"

      field :segments, -> { Internal::Types::Array[Mailhub::Types::CampaignSegmentModel] }, optional: true, nullable: false

      field :template_code, -> { String }, optional: true, nullable: false, api_name: "templateCode"

      field :body, -> { String }, optional: true, nullable: false

      field :editor_type, -> { Mailhub::Types::EditorType }, optional: true, nullable: false, api_name: "editorType"

      field :editor_source, -> { String }, optional: true, nullable: false, api_name: "editorSource"

      field :send_at, -> { String }, optional: true, nullable: false, api_name: "sendAt"

      field :to_send, -> { Integer }, optional: true, nullable: false, api_name: "toSend"

      field :sent, -> { Integer }, optional: true, nullable: false

      field :views, -> { Integer }, optional: true, nullable: false

      field :unique_views, -> { Integer }, optional: true, nullable: false, api_name: "uniqueViews"

      field :clicks, -> { Integer }, optional: true, nullable: false

      field :unique_clicks, -> { Integer }, optional: true, nullable: false, api_name: "uniqueClicks"

      field :bounces, -> { Integer }, optional: true, nullable: false

      field :status, -> { Mailhub::Types::CampaignStatus }, optional: true, nullable: false

      field :created_at, -> { String }, optional: true, nullable: false, api_name: "createdAt"

      field :updated_at, -> { String }, optional: true, nullable: false, api_name: "updatedAt"

      field :started_at, -> { String }, optional: true, nullable: false, api_name: "startedAt"
    end
  end
end
