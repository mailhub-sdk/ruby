# frozen_string_literal: true

module Mailhub
  module Types
    # 커서 기반 페이지네이션 목록 결과
    class ContactModelCursorPagedResult < Internal::Types::Model
      field :page_size, -> { Integer }, optional: true, nullable: false, api_name: "pageSize"

      field :total_count, -> { Integer }, optional: true, nullable: false, api_name: "totalCount"

      field :items, -> { Internal::Types::Array[Mailhub::Types::ContactModel] }, optional: true, nullable: false

      field :next_cursor, -> { String }, optional: true, nullable: false, api_name: "nextCursor"

      field :has_more, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "hasMore"
    end
  end
end
