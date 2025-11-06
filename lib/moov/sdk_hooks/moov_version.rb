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
          config: SDKConfiguration
        ).returns(SDKConfiguration)
      end
      def sdk_init(config:)
        config.globals[:parameters][:header][:x_moov_version] = config.openapi_doc_version
        config
      end

    end
  end
end
