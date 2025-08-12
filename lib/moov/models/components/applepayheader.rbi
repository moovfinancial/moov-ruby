# typed: true
# frozen_string_literal: true


class Moov::Models::Components::ApplePayHeader
  extend ::Crystalline::MetadataFields::ClassMethods
end


class Moov::Models::Components::ApplePayHeader
  def public_key_hash(); end
  def public_key_hash=(str_); end
  def transaction_id(); end
  def transaction_id=(str_); end
  def ephemeral_public_key(); end
  def ephemeral_public_key=(str_); end
end