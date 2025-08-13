# typed: true
# frozen_string_literal: true


class Moov::Models::Components::TransferSource
  extend ::Crystalline::MetadataFields::ClassMethods
end


class Moov::Models::Components::TransferSource
  def payment_method_id(); end
  def payment_method_id=(str_); end
  def payment_method_type(); end
  def payment_method_type=(str_); end
  def account(); end
  def account=(str_); end
  def transfer_id(); end
  def transfer_id=(str_); end
  def bank_account(); end
  def bank_account=(str_); end
  def wallet(); end
  def wallet=(str_); end
  def card(); end
  def card=(str_); end
  def apple_pay(); end
  def apple_pay=(str_); end
  def terminal_card(); end
  def terminal_card=(str_); end
  def card_details(); end
  def card_details=(str_); end
  def ach_details(); end
  def ach_details=(str_); end
end