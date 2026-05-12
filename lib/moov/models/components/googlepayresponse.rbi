# typed: true
# frozen_string_literal: true


class Moov::Models::Components::GooglePayResponse
  extend ::Crystalline::MetadataFields::ClassMethods
end


class Moov::Models::Components::GooglePayResponse
  def token_id(); end
  def token_id=(str_); end
  def brand(); end
  def brand=(str_); end
  def card_type(); end
  def card_type=(str_); end
  def card_display_name(); end
  def card_display_name=(str_); end
  def fingerprint(); end
  def fingerprint=(str_); end
  def expiration(); end
  def expiration=(str_); end
  def dynamic_last_four(); end
  def dynamic_last_four=(str_); end
  def issuer_country(); end
  def issuer_country=(str_); end
  def auth_method(); end
  def auth_method=(str_); end
end
