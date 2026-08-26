# frozen_string_literal: true

module Mailhub
  module Media
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
      # @option params [String, nil] :sort_by
      # @option params [String, nil] :sort_direction
      # @option params [Integer, nil] :page_size
      # @option params [Integer, nil] :page_index
      #
      # @example
      #   client.media.get_medias
      #
      # @return [Mailhub::Types::MediaModelPagedResult]
      def get_medias(request_options: {}, **params)
        params = Mailhub::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["search"] = params[:search] if params.key?(:search)
        query_params["sortBy"] = params[:sort_by] if params.key?(:sort_by)
        query_params["sortDirection"] = params[:sort_direction] if params.key?(:sort_direction)
        query_params["pageSize"] = params[:page_size] if params.key?(:page_size)
        query_params["pageIndex"] = params[:page_index] if params.key?(:page_index)

        request = Mailhub::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "v1/media",
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
          Mailhub::Types::MediaModelPagedResult.load(response.body)
        else
          error_class = Mailhub::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # @param request_options [Hash]
      # @param params [void]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      #
      # @example
      #   client.media.upload_media
      #
      # @return [Mailhub::Types::MediaModel]
      def upload_media(request_options: {}, **params)
        params = Mailhub::Internal::Types::Utils.normalize_keys(params)
        body = Internal::Multipart::FormData.new

        body.add_part(params[:file].to_form_data_part(name: "file")) if params[:file]

        request = Mailhub::Internal::Multipart::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "v1/media",
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
          Mailhub::Types::MediaModel.load(response.body)
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
      #   client.media.get_media(code: "code")
      #
      # @return [Mailhub::Types::MediaModel]
      def get_media(request_options: {}, **params)
        params = Mailhub::Internal::Types::Utils.normalize_keys(params)
        request = Mailhub::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "v1/media/#{URI.encode_uri_component(params[:code].to_s)}",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Mailhub::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Mailhub::Types::MediaModel.load(response.body)
        else
          error_class = Mailhub::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # @param request_options [Hash]
      # @param params [Mailhub::Media::Types::UpdateMediaRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :code
      #
      # @example
      #   client.media.update_media(code: "code")
      #
      # @return [Mailhub::Types::MediaModel]
      def update_media(request_options: {}, **params)
        params = Mailhub::Internal::Types::Utils.normalize_keys(params)
        request_data = Mailhub::Media::Types::UpdateMediaRequest.new(params).to_h
        non_body_param_names = %w[code]
        body = request_data.except(*non_body_param_names)

        request = Mailhub::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "PUT",
          path: "v1/media/#{URI.encode_uri_component(params[:code].to_s)}",
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
          Mailhub::Types::MediaModel.load(response.body)
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
      #   client.media.delete_media(code: "code")
      #
      # @return [untyped]
      def delete_media(request_options: {}, **params)
        params = Mailhub::Internal::Types::Utils.normalize_keys(params)
        request = Mailhub::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "DELETE",
          path: "v1/media/#{URI.encode_uri_component(params[:code].to_s)}",
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
      #   client.media.download_media(code: "code")
      #
      # @return [untyped]
      def download_media(request_options: {}, **params)
        params = Mailhub::Internal::Types::Utils.normalize_keys(params)
        request = Mailhub::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "v1/media/#{URI.encode_uri_component(params[:code].to_s)}/download",
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
    end
  end
end
