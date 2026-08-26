# frozen_string_literal: true

module Mailhub
  module CustomField
    class Client
      # @param client [Mailhub::Internal::Http::RawClient]
      #
      # @return [void]
      def initialize(client:)
        @client = client
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
      #   client.custom_field.get_custom_fields
      #
      # @return [Array[Mailhub::Types::CustomFieldModel]]
      def get_custom_fields(request_options: {}, **_params)
        request = Mailhub::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "v1/custom-fields",
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
      # @param params [Mailhub::CustomField::Types::CreateCustomFieldRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      #
      # @example
      #   client.custom_field.create_custom_field
      #
      # @return [Mailhub::Types::CustomFieldModel]
      def create_custom_field(request_options: {}, **params)
        params = Mailhub::Internal::Types::Utils.normalize_keys(params)
        request = Mailhub::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "v1/custom-fields",
          body: Mailhub::CustomField::Types::CreateCustomFieldRequest.new(params).to_h,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Mailhub::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Mailhub::Types::CustomFieldModel.load(response.body)
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
      # @option params [String] :key
      #
      # @example
      #   client.custom_field.get_custom_field(key: "key")
      #
      # @return [Mailhub::Types::CustomFieldModel]
      def get_custom_field(request_options: {}, **params)
        params = Mailhub::Internal::Types::Utils.normalize_keys(params)
        request = Mailhub::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "v1/custom-fields/#{URI.encode_uri_component(params[:key].to_s)}",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Mailhub::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Mailhub::Types::CustomFieldModel.load(response.body)
        else
          error_class = Mailhub::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # @param request_options [Hash]
      # @param params [Mailhub::CustomField::Types::UpdateCustomFieldRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :key
      #
      # @example
      #   client.custom_field.update_custom_field(key: "key")
      #
      # @return [Mailhub::Types::CustomFieldModel]
      def update_custom_field(request_options: {}, **params)
        params = Mailhub::Internal::Types::Utils.normalize_keys(params)
        request_data = Mailhub::CustomField::Types::UpdateCustomFieldRequest.new(params).to_h
        non_body_param_names = %w[key]
        body = request_data.except(*non_body_param_names)

        request = Mailhub::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "PUT",
          path: "v1/custom-fields/#{URI.encode_uri_component(params[:key].to_s)}",
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
          Mailhub::Types::CustomFieldModel.load(response.body)
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
      # @option params [String] :key
      #
      # @example
      #   client.custom_field.delete_custom_field(key: "key")
      #
      # @return [untyped]
      def delete_custom_field(request_options: {}, **params)
        params = Mailhub::Internal::Types::Utils.normalize_keys(params)
        request = Mailhub::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "DELETE",
          path: "v1/custom-fields/#{URI.encode_uri_component(params[:key].to_s)}",
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
