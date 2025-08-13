# typed: true
# frozen_string_literal: true


class Moov::Models::Components::CardTransactionDetails
  extend ::Crystalline::MetadataFields::ClassMethods
end


class Moov::Models::Components::CardTransactionDetails
  def status(); end
  def status=(str_); end
  def failure_code(); end
  def failure_code=(str_); end
  def dynamic_descriptor(); end
  def dynamic_descriptor=(str_); end
  def transaction_source(); end
  def transaction_source=(str_); end
  def initiated_on(); end
  def initiated_on=(str_); end
  def confirmed_on(); end
  def confirmed_on=(str_); end
  def settled_on(); end
  def settled_on=(str_); end
  def failed_on(); end
  def failed_on=(str_); end
  def canceled_on(); end
  def canceled_on=(str_); end
  def completed_on(); end
  def completed_on=(str_); end
  def interchange_qualification(); end
  def interchange_qualification=(str_); end
  def fee_program(); end
  def fee_program=(str_); end
  def authorization_code(); end
  def authorization_code=(str_); end
end