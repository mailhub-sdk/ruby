# frozen_string_literal: true

module Mailhub
  module Campaign
    class Client
      # @param client [Mailhub::Internal::Http::RawClient]
      #
      # @return [void]
      def initialize(client:)
        @client = client
      end

      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String, nil] :search
      # @option params [Mailhub::Types::CampaignStatus, nil] :status
      # @option params [String, nil] :sort_by
      # @option params [String, nil] :sort_direction
      # @option params [Integer, nil] :page_size
      # @option params [Integer, nil] :page_index
      #
      # @example
      #   client.campaign.get_campaigns
      #
      # @return [Mailhub::Types::CampaignModelPagedResult]
      def get_campaigns(request_options: {}, **params)
        params = Mailhub::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["search"] = params[:search] if params.key?(:search)
        query_params["status"] = params[:status] if params.key?(:status)
        query_params["sortBy"] = params[:sort_by] if params.key?(:sort_by)
        query_params["sortDirection"] = params[:sort_direction] if params.key?(:sort_direction)
        query_params["pageSize"] = params[:page_size] if params.key?(:page_size)
        query_params["pageIndex"] = params[:page_index] if params.key?(:page_index)

        request = Mailhub::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "v1/campaigns",
          query: query_params,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Mailhub::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Mailhub::Types::CampaignModelPagedResult.load(response.body)
        else
          error_class = Mailhub::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # @param request_options [Hash]
      # @param params [Mailhub::Campaign::Types::CreateCampaignByCodeRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      #
      # @example
      #   client.campaign.create_campaign
      #
      # @return [Mailhub::Types::CampaignModel]
      def create_campaign(request_options: {}, **params)
        params = Mailhub::Internal::Types::Utils.normalize_keys(params)
        request = Mailhub::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "v1/campaigns",
          body: Mailhub::Campaign::Types::CreateCampaignByCodeRequest.new(params).to_h,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Mailhub::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Mailhub::Types::CampaignModel.load(response.body)
        else
          error_class = Mailhub::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :code
      #
      # @example
      #   client.campaign.get_campaign(code: "code")
      #
      # @return [Mailhub::Types::CampaignModel]
      def get_campaign(request_options: {}, **params)
        params = Mailhub::Internal::Types::Utils.normalize_keys(params)
        request = Mailhub::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "v1/campaigns/#{URI.encode_uri_component(params[:code].to_s)}",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Mailhub::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Mailhub::Types::CampaignModel.load(response.body)
        else
          error_class = Mailhub::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # @param request_options [Hash]
      # @param params [Mailhub::Campaign::Types::UpdateCampaignByCodeRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :code
      #
      # @example
      #   client.campaign.update_campaign(code: "code")
      #
      # @return [Mailhub::Types::CampaignModel]
      def update_campaign(request_options: {}, **params)
        params = Mailhub::Internal::Types::Utils.normalize_keys(params)
        request_data = Mailhub::Campaign::Types::UpdateCampaignByCodeRequest.new(params).to_h
        non_body_param_names = %w[code]
        body = request_data.except(*non_body_param_names)

        request = Mailhub::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "PUT",
          path: "v1/campaigns/#{URI.encode_uri_component(params[:code].to_s)}",
          body: body,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Mailhub::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Mailhub::Types::CampaignModel.load(response.body)
        else
          error_class = Mailhub::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :code
      #
      # @example
      #   client.campaign.delete_campaign(code: "code")
      #
      # @return [untyped]
      def delete_campaign(request_options: {}, **params)
        params = Mailhub::Internal::Types::Utils.normalize_keys(params)
        request = Mailhub::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "DELETE",
          path: "v1/campaigns/#{URI.encode_uri_component(params[:code].to_s)}",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Mailhub::Errors::TimeoutError
        end
        code = response.code.to_i
        return if code.between?(200, 299)

        error_class = Mailhub::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
      end

      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :code
      #
      # @example
      #   client.campaign.preview_campaign(code: "code")
      #
      # @return [String]
      def preview_campaign(request_options: {}, **params)
        params = Mailhub::Internal::Types::Utils.normalize_keys(params)
        request = Mailhub::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "v1/campaigns/#{URI.encode_uri_component(params[:code].to_s)}/preview",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Mailhub::Errors::TimeoutError
        end
        code = response.code.to_i
        return if code.between?(200, 299)

        error_class = Mailhub::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
      end

      # @param request_options [Hash]
      # @param params [Mailhub::Campaign::Types::GetCampaignRenderedPreviewByCodeRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :code
      #
      # @example
      #   client.campaign.render_campaign_preview(code: "code")
      #
      # @return [String]
      def render_campaign_preview(request_options: {}, **params)
        params = Mailhub::Internal::Types::Utils.normalize_keys(params)
        request_data = Mailhub::Campaign::Types::GetCampaignRenderedPreviewByCodeRequest.new(params).to_h
        non_body_param_names = %w[code]
        body = request_data.except(*non_body_param_names)

        request = Mailhub::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "v1/campaigns/#{URI.encode_uri_component(params[:code].to_s)}/preview",
          body: body,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Mailhub::Errors::TimeoutError
        end
        code = response.code.to_i
        return if code.between?(200, 299)

        error_class = Mailhub::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
      end

      # @param request_options [Hash]
      # @param params [Mailhub::Campaign::Types::TestCampaignByCodeRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :code
      #
      # @example
      #   client.campaign.test_campaign(code: "code")
      #
      # @return [Boolean]
      def test_campaign(request_options: {}, **params)
        params = Mailhub::Internal::Types::Utils.normalize_keys(params)
        request_data = Mailhub::Campaign::Types::TestCampaignByCodeRequest.new(params).to_h
        non_body_param_names = %w[code]
        body = request_data.except(*non_body_param_names)

        request = Mailhub::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "v1/campaigns/#{URI.encode_uri_component(params[:code].to_s)}/test",
          body: body,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Mailhub::Errors::TimeoutError
        end
        code = response.code.to_i
        return if code.between?(200, 299)

        error_class = Mailhub::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
      end

      # @param request_options [Hash]
      # @param _params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      #
      # @example
      #   client.campaign.get_running_campaign_stats
      #
      # @return [Array[Mailhub::Types::RunningCampaignStatsModel]]
      def get_running_campaign_stats(request_options: {}, **_params)
        request = Mailhub::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "v1/campaigns/stats/running",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Mailhub::Errors::TimeoutError
        end
        code = response.code.to_i
        return if code.between?(200, 299)

        error_class = Mailhub::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
      end

      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :code
      #
      # @example
      #   client.campaign.get_campaign_analytics(code: "code")
      #
      # @return [Mailhub::Types::CampaignAnalyticsModel]
      def get_campaign_analytics(request_options: {}, **params)
        params = Mailhub::Internal::Types::Utils.normalize_keys(params)
        request = Mailhub::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "v1/campaigns/#{URI.encode_uri_component(params[:code].to_s)}/analytics",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Mailhub::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Mailhub::Types::CampaignAnalyticsModel.load(response.body)
        else
          error_class = Mailhub::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :code
      #
      # @example
      #   client.campaign.get_campaign_activity(code: "code")
      #
      # @return [Array[Mailhub::Types::CampaignActivityPointModel]]
      def get_campaign_activity(request_options: {}, **params)
        params = Mailhub::Internal::Types::Utils.normalize_keys(params)
        request = Mailhub::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "v1/campaigns/#{URI.encode_uri_component(params[:code].to_s)}/activity",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Mailhub::Errors::TimeoutError
        end
        code = response.code.to_i
        return if code.between?(200, 299)

        error_class = Mailhub::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
      end

      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :code
      #
      # @example
      #   client.campaign.get_campaign_link_stats(code: "code")
      #
      # @return [Array[Mailhub::Types::CampaignLinkStatModel]]
      def get_campaign_link_stats(request_options: {}, **params)
        params = Mailhub::Internal::Types::Utils.normalize_keys(params)
        request = Mailhub::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "v1/campaigns/#{URI.encode_uri_component(params[:code].to_s)}/link-stats",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Mailhub::Errors::TimeoutError
        end
        code = response.code.to_i
        return if code.between?(200, 299)

        error_class = Mailhub::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
      end

      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :code
      #
      # @example
      #   client.campaign.get_campaign_media(code: "code")
      #
      # @return [Array[Mailhub::Types::CampaignMediaModel]]
      def get_campaign_media(request_options: {}, **params)
        params = Mailhub::Internal::Types::Utils.normalize_keys(params)
        request = Mailhub::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "v1/campaigns/#{URI.encode_uri_component(params[:code].to_s)}/media",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Mailhub::Errors::TimeoutError
        end
        code = response.code.to_i
        return if code.between?(200, 299)

        error_class = Mailhub::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
      end

      # @param request_options [Hash]
      # @param params [Mailhub::Campaign::Types::AddCampaignMediaByCodeRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :code
      #
      # @example
      #   client.campaign.add_campaign_media(code: "code")
      #
      # @return [Mailhub::Types::CampaignMediaModel]
      def add_campaign_media(request_options: {}, **params)
        params = Mailhub::Internal::Types::Utils.normalize_keys(params)
        request_data = Mailhub::Campaign::Types::AddCampaignMediaByCodeRequest.new(params).to_h
        non_body_param_names = %w[code]
        body = request_data.except(*non_body_param_names)

        request = Mailhub::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "v1/campaigns/#{URI.encode_uri_component(params[:code].to_s)}/media",
          body: body,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Mailhub::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Mailhub::Types::CampaignMediaModel.load(response.body)
        else
          error_class = Mailhub::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :code
      # @option params [String] :media_code
      #
      # @example
      #   client.campaign.remove_campaign_media(
      #     code: "code",
      #     media_code: "mediaCode"
      #   )
      #
      # @return [untyped]
      def remove_campaign_media(request_options: {}, **params)
        params = Mailhub::Internal::Types::Utils.normalize_keys(params)
        request = Mailhub::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "DELETE",
          path: "v1/campaigns/#{URI.encode_uri_component(params[:code].to_s)}/media/#{URI.encode_uri_component(params[:media_code].to_s)}",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Mailhub::Errors::TimeoutError
        end
        code = response.code.to_i
        return if code.between?(200, 299)

        error_class = Mailhub::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
      end

      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :code
      #
      # @example
      #   client.campaign.schedule_campaign(code: "code")
      #
      # @return [Mailhub::Types::CampaignModel]
      def schedule_campaign(request_options: {}, **params)
        params = Mailhub::Internal::Types::Utils.normalize_keys(params)
        request = Mailhub::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "PUT",
          path: "v1/campaigns/#{URI.encode_uri_component(params[:code].to_s)}/schedule",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Mailhub::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Mailhub::Types::CampaignModel.load(response.body)
        else
          error_class = Mailhub::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :code
      #
      # @example
      #   client.campaign.send_campaign(code: "code")
      #
      # @return [Mailhub::Types::CampaignModel]
      def send_campaign(request_options: {}, **params)
        params = Mailhub::Internal::Types::Utils.normalize_keys(params)
        request = Mailhub::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "PUT",
          path: "v1/campaigns/#{URI.encode_uri_component(params[:code].to_s)}/send",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Mailhub::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Mailhub::Types::CampaignModel.load(response.body)
        else
          error_class = Mailhub::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :code
      #
      # @example
      #   client.campaign.pause_campaign(code: "code")
      #
      # @return [Mailhub::Types::CampaignModel]
      def pause_campaign(request_options: {}, **params)
        params = Mailhub::Internal::Types::Utils.normalize_keys(params)
        request = Mailhub::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "PUT",
          path: "v1/campaigns/#{URI.encode_uri_component(params[:code].to_s)}/pause",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Mailhub::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Mailhub::Types::CampaignModel.load(response.body)
        else
          error_class = Mailhub::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :code
      #
      # @example
      #   client.campaign.cancel_campaign(code: "code")
      #
      # @return [Mailhub::Types::CampaignModel]
      def cancel_campaign(request_options: {}, **params)
        params = Mailhub::Internal::Types::Utils.normalize_keys(params)
        request = Mailhub::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "PUT",
          path: "v1/campaigns/#{URI.encode_uri_component(params[:code].to_s)}/cancel",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Mailhub::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Mailhub::Types::CampaignModel.load(response.body)
        else
          error_class = Mailhub::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :code
      #
      # @example
      #   client.campaign.catch_up_campaign(code: "code")
      #
      # @return [Mailhub::Types::CampaignModel]
      def catch_up_campaign(request_options: {}, **params)
        params = Mailhub::Internal::Types::Utils.normalize_keys(params)
        request = Mailhub::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "PUT",
          path: "v1/campaigns/#{URI.encode_uri_component(params[:code].to_s)}/catch-up",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Mailhub::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Mailhub::Types::CampaignModel.load(response.body)
        else
          error_class = Mailhub::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end
    end
  end
end
