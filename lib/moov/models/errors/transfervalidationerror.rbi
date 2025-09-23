# typed: true
# frozen_string_literal: true


class Moov::Models::Errors::TransferValidationError
  extend ::Crystalline::MetadataFields::ClassMethods
end


class Moov::Models::Errors::TransferValidationError
  def amount(); end
  def amount=(str_); end
  def source(); end
  def source=(str_); end
  def source_payment_method_id(); end
  def source_payment_method_id=(str_); end
  def destination_payment_method_id(); end
  def destination_payment_method_id=(str_); end
  def description(); end
  def description=(str_); end
  def facilitator_fee_total_decimal(); end
  def facilitator_fee_total_decimal=(str_); end
  def facilitator_fee_markup_decimal(); end
  def facilitator_fee_markup_decimal=(str_); end
  def metadata(); end
  def metadata=(str_); end
  def sales_tax_amount(); end
  def sales_tax_amount=(str_); end
  def foreign_id(); end
  def foreign_id=(str_); end
  def raw_response(); end
  def raw_response=(str_); end
end