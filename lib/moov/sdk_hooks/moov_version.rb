# typed: true
# frozen_string_literal: true

require_relative './types'
require 'sorbet-runtime'

module Moov
  module SDKHooks
    class MoovVersionHook < AbstractSDKHook
      extend T::Sig

      sig do
        override.params(
          hook_ctx: BeforeRequestHookContext,
          request: Faraday::Request
        ).returns(Faraday::Request)
      end
      def before_request(hook_ctx:, request:)
        request.headers['X-Moov-Version'] = hook_ctx.config.openapi_doc_version
        request
      end

    end
  end
end
