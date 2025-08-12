# typed: true
# frozen_string_literal: true


class Moov::Models::Components::BankAccount
  extend ::Crystalline::MetadataFields::ClassMethods
end


class Moov::Models::Components::BankAccount
  def bank_account_id(); end
  def bank_account_id=(str_); end
  def fingerprint(); end
  def fingerprint=(str_); end
  def status(); end
  def status=(str_); end
  def holder_name(); end
  def holder_name=(str_); end
  def holder_type(); end
  def holder_type=(str_); end
  def bank_name(); end
  def bank_name=(str_); end
  def bank_account_type(); end
  def bank_account_type=(str_); end
  def routing_number(); end
  def routing_number=(str_); end
  def last_four_account_number(); end
  def last_four_account_number=(str_); end
  def updated_on(); end
  def updated_on=(str_); end
  def status_reason(); end
  def status_reason=(str_); end
  def exception_details(); end
  def exception_details=(str_); end
  def payment_methods(); end
  def payment_methods=(str_); end
end