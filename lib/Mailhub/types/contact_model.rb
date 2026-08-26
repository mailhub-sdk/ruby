# frozen_string_literal: true

module Mailhub
  module Types
    # 연락처 정보
    class ContactModel < Internal::Types::Model
      field :guid, -> { String }, optional: true, nullable: false

      field :email, -> { String }, optional: true, nullable: false

      field :name, -> { String }, optional: true, nullable: false

      field :status, -> { Mailhub::Types::ContactStatus }, optional: true, nullable: false

      field :segments, -> { Internal::Types::Array[Mailhub::Types::ContactSegmentModel] }, optional: true, nullable: false

      field :fields, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false

      field :created_at, -> { String }, optional: true, nullable: false, api_name: "createdAt"

      field :updated_at, -> { String }, optional: true, nullable: false, api_name: "updatedAt"
    end
  end
end
