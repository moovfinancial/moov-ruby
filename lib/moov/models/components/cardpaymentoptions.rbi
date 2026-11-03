# typed: true
# frozen_string_literal: true


class Moov::Models::Components::CardPaymentOptions
  extend ::Crystalline::MetadataFields::ClassMethods
end


class Moov::Models::Components::CardPaymentOptions
  def dynamic_descriptor(); end
  def dynamic_descriptor=(str_); end
  def transaction_source(); end
  def transaction_source=(str_); end
  def capture_method(); end
  def capture_method=(str_); end
  def is_extended_authorization_requested(); end
  def is_extended_authorization_requested=(str_); end
  def is_estimated_authorization(); end
  def is_estimated_authorization=(str_); end
end
