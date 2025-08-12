# typed: true
# frozen_string_literal: true


class Moov::Models::Components::LinkCard
  extend ::Crystalline::MetadataFields::ClassMethods
end


class Moov::Models::Components::LinkCard
  def card_number(); end
  def card_number=(str_); end
  def card_cvv(); end
  def card_cvv=(str_); end
  def expiration(); end
  def expiration=(str_); end
  def billing_address(); end
  def billing_address=(str_); end
  def e2ee(); end
  def e2ee=(str_); end
  def holder_name(); end
  def holder_name=(str_); end
  def card_on_file(); end
  def card_on_file=(str_); end
  def merchant_account_id(); end
  def merchant_account_id=(str_); end
  def verify_name(); end
  def verify_name=(str_); end
end