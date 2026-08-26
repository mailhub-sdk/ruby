# frozen_string_literal: true

module Mailhub
  module Contact
    module Types
      class GetContactsRequest < Internal::Types::Model
        field :search, -> { String }, optional: true, nullable: false

        field :segment_id, -> { Integer }, optional: true, nullable: false, api_name: "segmentId"

        field :status, -> { Mailhub::Types::ContactStatus }, optional: true, nullable: false

        field :sort_by, -> { String }, optional: true, nullable: false, api_name: "sortBy"

        field :sort_direction, -> { String }, optional: true, nullable: false, api_name: "sortDirection"

        field :page_size, -> { Integer }, optional: true, nullable: false, api_name: "pageSize"

        field :cursor, -> { String }, optional: true, nullable: false
      end
    end
  end
end
