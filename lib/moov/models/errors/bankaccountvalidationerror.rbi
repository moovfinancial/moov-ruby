# typed: true
# frozen_string_literal: true


class Moov::Models::Errors::BankAccountValidationError
  extend ::Crystalline::MetadataFields::ClassMethods
end


class Moov::Models::Errors::BankAccountValidationError
  def account(); end
  def account=(str_); end
  def plaid(); end
  def plaid=(str_); end
  def plaid_link(); end
  def plaid_link=(str_); end
  def mx(); end
  def mx=(str_); end
  def error(); end
  def error=(str_); end
  def raw_response(); end
  def raw_response=(str_); end
end