# typed: true
# frozen_string_literal: true


class Moov::Models::Errors::CreateInvoiceError
  extend ::Crystalline::MetadataFields::ClassMethods
end


class Moov::Models::Errors::CreateInvoiceError
  def customer_account_id(); end
  def customer_account_id=(str_); end
  def description(); end
  def description=(str_); end
  def line_items(); end
  def line_items=(str_); end
  def invoice_date(); end
  def invoice_date=(str_); end
  def due_date(); end
  def due_date=(str_); end
  def amount_details(); end
  def amount_details=(str_); end
  def raw_response(); end
  def raw_response=(str_); end
end
