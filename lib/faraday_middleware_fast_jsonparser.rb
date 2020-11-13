# frozen_string_literal: true

require "faraday_middleware/response_middleware"

module FaradayMiddleware
  class FastJsonparser < ResponseMiddleware
    dependency "fast_jsonparser"

    define_parser do |body, parser_options|
      ::FastJsonparser.parse(body, parser_options || {}) unless body.strip.empty?
    end
  end
end

Faraday::Response.register_middleware fast_jsonparser: FaradayMiddleware::FastJsonparser
