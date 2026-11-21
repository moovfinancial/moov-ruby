# typed: true
# frozen_string_literal: true


class Moov::Models::Components::CreatePaymentTokenCardError
  extend ::Crystalline::MetadataFields::ClassMethods
end


class Moov::Models::Components::CreatePaymentTokenCardError
  def card_number(); end
  def card_number=(str_); end
  def card_cvv(); end
  def card_cvv=(str_); end
  def expiration(); end
  def expiration=(str_); end
  def holder_name(); end
  def holder_name=(str_); end
  def billing_address(); end
  def billing_address=(str_); end
end
