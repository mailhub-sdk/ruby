# frozen_string_literal: true

module Mailhub
  module Template
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
      #   client.template.get_templates
      #
      # @return [Mailhub::Types::TemplateModelPagedResult]
      def get_templates(request_options: {}, **params)
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
          path: "v1/templates",
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
          Mailhub::Types::TemplateModelPagedResult.load(response.body)
        else
          error_class = Mailhub::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # @param request_options [Hash]
      # @param params [Mailhub::Template::Types::CreateTemplateRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      #
      # @example
      #   client.template.create_template
      #
      # @return [Mailhub::Types::TemplateModel]
      def create_template(request_options: {}, **params)
        params = Mailhub::Internal::Types::Utils.normalize_keys(params)
        request = Mailhub::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "v1/templates",
          body: Mailhub::Template::Types::CreateTemplateRequest.new(params).to_h,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Mailhub::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Mailhub::Types::TemplateModel.load(response.body)
        else
          error_class = Mailhub::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
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
      #   client.template.get_template_expressions
      #
      # @return [Array[Mailhub::Types::TemplateExpressionModel]]
      def get_template_expressions(request_options: {}, **_params)
        request = Mailhub::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "v1/templates/meta/expressions",
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
      #   client.template.get_template(code: "code")
      #
      # @return [Mailhub::Types::TemplateModel]
      def get_template(request_options: {}, **params)
        params = Mailhub::Internal::Types::Utils.normalize_keys(params)
        request = Mailhub::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "v1/templates/#{URI.encode_uri_component(params[:code].to_s)}",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Mailhub::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Mailhub::Types::TemplateModel.load(response.body)
        else
          error_class = Mailhub::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # @param request_options [Hash]
      # @param params [Mailhub::Template::Types::UpdateTemplateRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :code
      #
      # @example
      #   client.template.update_template(code: "code")
      #
      # @return [Mailhub::Types::TemplateModel]
      def update_template(request_options: {}, **params)
        params = Mailhub::Internal::Types::Utils.normalize_keys(params)
        request_data = Mailhub::Template::Types::UpdateTemplateRequest.new(params).to_h
        non_body_param_names = %w[code]
        body = request_data.except(*non_body_param_names)

        request = Mailhub::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "PUT",
          path: "v1/templates/#{URI.encode_uri_component(params[:code].to_s)}",
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
          Mailhub::Types::TemplateModel.load(response.body)
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
      #   client.template.delete_template(code: "code")
      #
      # @return [untyped]
      def delete_template(request_options: {}, **params)
        params = Mailhub::Internal::Types::Utils.normalize_keys(params)
        request = Mailhub::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "DELETE",
          path: "v1/templates/#{URI.encode_uri_component(params[:code].to_s)}",
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
      #   client.template.preview_template(code: "code")
      #
      # @return [String]
      def preview_template(request_options: {}, **params)
        params = Mailhub::Internal::Types::Utils.normalize_keys(params)
        request = Mailhub::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "v1/templates/#{URI.encode_uri_component(params[:code].to_s)}/preview",
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
      # @param params [Mailhub::Template::Types::GetTemplateRenderedPreviewRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      #
      # @example
      #   client.template.render_template_preview
      #
      # @return [String]
      def render_template_preview(request_options: {}, **params)
        params = Mailhub::Internal::Types::Utils.normalize_keys(params)
        request = Mailhub::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "v1/templates/preview",
          body: Mailhub::Template::Types::GetTemplateRenderedPreviewRequest.new(params).to_h,
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
