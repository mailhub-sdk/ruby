# frozen_string_literal: true

module Mailhub
  class MailhubClient
    # @param api_key [String]
    # @param base_url [String, nil]
    # @param max_retries [Integer]
    #
    # @return [void]
    def initialize(api_key:, base_url: nil, max_retries: 2)
      @raw_client = Mailhub::Internal::Http::RawClient.new(
        base_url: base_url,
        headers: {
          "X-API-Key" => api_key.to_s
        },
        max_retries: max_retries
      )
    end

    # @return [Mailhub::Campaign::Client]
    def campaign
      @campaign ||= Mailhub::Campaign::Client.new(client: @raw_client)
    end

    # @return [Mailhub::Contact::Client]
    def contact
      @contact ||= Mailhub::Contact::Client.new(client: @raw_client)
    end

    # @return [Mailhub::CustomField::Client]
    def custom_field
      @custom_field ||= Mailhub::CustomField::Client.new(client: @raw_client)
    end

    # @return [Mailhub::Media::Client]
    def media
      @media ||= Mailhub::Media::Client.new(client: @raw_client)
    end

    # @return [Mailhub::Message::Client]
    def message
      @message ||= Mailhub::Message::Client.new(client: @raw_client)
    end

    # @return [Mailhub::Segment::Client]
    def segment
      @segment ||= Mailhub::Segment::Client.new(client: @raw_client)
    end

    # @return [Mailhub::Template::Client]
    def template
      @template ||= Mailhub::Template::Client.new(client: @raw_client)
    end
  end
end
