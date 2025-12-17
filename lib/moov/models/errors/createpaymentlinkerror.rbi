# typed: true
# frozen_string_literal: true


class Moov::Models::Errors::CreatePaymentLinkError
  extend ::Crystalline::MetadataFields::ClassMethods
end


class Moov::Models::Errors::CreatePaymentLinkError
  def partner_account_id(); end
  def partner_account_id=(str_); end
  def merchant_payment_method_id(); end
  def merchant_payment_method_id=(str_); end
  def amount(); end
  def amount=(str_); end
  def sales_tax_amount(); end
  def sales_tax_amount=(str_); end
  def max_uses(); end
  def max_uses=(str_); end
  def expires_on(); end
  def expires_on=(str_); end
  def display(); end
  def display=(str_); end
  def payment(); end
  def payment=(str_); end
  def payout(); end
  def payout=(str_); end
  def line_items(); end
  def line_items=(str_); end
  def raw_response(); end
  def raw_response=(str_); end
end