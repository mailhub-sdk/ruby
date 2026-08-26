# frozen_string_literal: true

module Mailhub
  module Segment
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
      #   client.segment.get_segments
      #
      # @return [Mailhub::Types::SegmentModelPagedResult]
      def get_segments(request_options: {}, **params)
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
          path: "v1/segments",
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
          Mailhub::Types::SegmentModelPagedResult.load(response.body)
        else
          error_class = Mailhub::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # @param request_options [Hash]
      # @param params [Mailhub::Segment::Types::CreateSegmentRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      #
      # @example
      #   client.segment.create_segment
      #
      # @return [Mailhub::Types::SegmentModel]
      def create_segment(request_options: {}, **params)
        params = Mailhub::Internal::Types::Utils.normalize_keys(params)
        request = Mailhub::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "v1/segments",
          body: Mailhub::Segment::Types::CreateSegmentRequest.new(params).to_h,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Mailhub::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Mailhub::Types::SegmentModel.load(response.body)
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
      #   client.segment.get_segment(code: "code")
      #
      # @return [Mailhub::Types::SegmentModel]
      def get_segment(request_options: {}, **params)
        params = Mailhub::Internal::Types::Utils.normalize_keys(params)
        request = Mailhub::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "v1/segments/#{URI.encode_uri_component(params[:code].to_s)}",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Mailhub::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Mailhub::Types::SegmentModel.load(response.body)
        else
          error_class = Mailhub::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # @param request_options [Hash]
      # @param params [Mailhub::Segment::Types::UpdateSegmentRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :code
      #
      # @example
      #   client.segment.update_segment(code: "code")
      #
      # @return [Mailhub::Types::SegmentModel]
      def update_segment(request_options: {}, **params)
        params = Mailhub::Internal::Types::Utils.normalize_keys(params)
        request_data = Mailhub::Segment::Types::UpdateSegmentRequest.new(params).to_h
        non_body_param_names = %w[code]
        body = request_data.except(*non_body_param_names)

        request = Mailhub::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "PUT",
          path: "v1/segments/#{URI.encode_uri_component(params[:code].to_s)}",
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
          Mailhub::Types::SegmentModel.load(response.body)
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
      #   client.segment.delete_segment(code: "code")
      #
      # @return [untyped]
      def delete_segment(request_options: {}, **params)
        params = Mailhub::Internal::Types::Utils.normalize_keys(params)
        request = Mailhub::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "DELETE",
          path: "v1/segments/#{URI.encode_uri_component(params[:code].to_s)}",
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
      # @param params [Mailhub::Segment::Types::DeleteSegmentsByCodeRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      #
      # @example
      #   client.segment.delete_segments
      #
      # @return [untyped]
      def delete_segments(request_options: {}, **params)
        params = Mailhub::Internal::Types::Utils.normalize_keys(params)
        request = Mailhub::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "v1/segments/delete",
          body: Mailhub::Segment::Types::DeleteSegmentsByCodeRequest.new(params).to_h,
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
      # @param params [Mailhub::Segment::Types::GetSegmentPreviewRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      #
      # @example
      #   client.segment.preview_segment
      #
      # @return [Mailhub::Types::PreviewSegmentModel]
      def preview_segment(request_options: {}, **params)
        params = Mailhub::Internal::Types::Utils.normalize_keys(params)
        request = Mailhub::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "v1/segments/preview",
          body: Mailhub::Segment::Types::GetSegmentPreviewRequest.new(params).to_h,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Mailhub::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Mailhub::Types::PreviewSegmentModel.load(response.body)
        else
          error_class = Mailhub::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # @param request_options [Hash]
      # @param params [Mailhub::Segment::Types::GetSegmentsUnionPreviewByCodeRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      #
      # @example
      #   client.segment.preview_segments_union
      #
      # @return [Mailhub::Types::PreviewSegmentModel]
      def preview_segments_union(request_options: {}, **params)
        params = Mailhub::Internal::Types::Utils.normalize_keys(params)
        request = Mailhub::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "v1/segments/preview/union",
          body: Mailhub::Segment::Types::GetSegmentsUnionPreviewByCodeRequest.new(params).to_h,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Mailhub::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Mailhub::Types::PreviewSegmentModel.load(response.body)
        else
          error_class = Mailhub::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # @param request_options [Hash]
      # @param params [Mailhub::Segment::Types::GetSegmentContactsRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      #
      # @example
      #   client.segment.query_segment_contacts
      #
      # @return [Mailhub::Types::ContactModelPagedResult]
      def query_segment_contacts(request_options: {}, **params)
        params = Mailhub::Internal::Types::Utils.normalize_keys(params)
        request = Mailhub::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "v1/segments/preview/contacts",
          body: Mailhub::Segment::Types::GetSegmentContactsRequest.new(params).to_h,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Mailhub::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Mailhub::Types::ContactModelPagedResult.load(response.body)
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
      #   client.segment.sync_segment(code: "code")
      #
      # @return [Mailhub::Types::SegmentModel]
      def sync_segment(request_options: {}, **params)
        params = Mailhub::Internal::Types::Utils.normalize_keys(params)
        request = Mailhub::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "v1/segments/#{URI.encode_uri_component(params[:code].to_s)}/sync",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Mailhub::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Mailhub::Types::SegmentModel.load(response.body)
        else
          error_class = Mailhub::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end
    end
  end
end
