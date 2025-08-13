# typed: true
# frozen_string_literal: true


class Moov::Models::Components::Card
  extend ::Crystalline::MetadataFields::ClassMethods
end


class Moov::Models::Components::Card
  def card_id(); end
  def card_id=(str_); end
  def fingerprint(); end
  def fingerprint=(str_); end
  def brand(); end
  def brand=(str_); end
  def card_type(); end
  def card_type=(str_); end
  def last_four_card_number(); end
  def last_four_card_number=(str_); end
  def bin(); end
  def bin=(str_); end
  def expiration(); end
  def expiration=(str_); end
  def billing_address(); end
  def billing_address=(str_); end
  def card_verification(); end
  def card_verification=(str_); end
  def card_category(); end
  def card_category=(str_); end
  def holder_name(); end
  def holder_name=(str_); end
  def issuer(); end
  def issuer=(str_); end
  def issuer_country(); end
  def issuer_country=(str_); end
  def issuer_url(); end
  def issuer_url=(str_); end
  def issuer_phone(); end
  def issuer_phone=(str_); end
  def commercial(); end
  def commercial=(str_); end
  def regulated(); end
  def regulated=(str_); end
  def card_on_file(); end
  def card_on_file=(str_); end
  def merchant_account_id(); end
  def merchant_account_id=(str_); end
  def card_account_updater(); end
  def card_account_updater=(str_); end
  def domestic_push_to_card(); end
  def domestic_push_to_card=(str_); end
  def domestic_pull_from_card(); end
  def domestic_pull_from_card=(str_); end
  def payment_methods(); end
  def payment_methods=(str_); end
end