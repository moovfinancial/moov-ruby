# typed: true
# frozen_string_literal: true


class Moov::Models::Components::CreateInvoice
  extend ::Crystalline::MetadataFields::ClassMethods
end


class Moov::Models::Components::CreateInvoice
  def customer_account_id(); end
  def customer_account_id=(str_); end
  def line_items(); end
  def line_items=(str_); end
  def description(); end
  def description=(str_); end
  def invoice_date(); end
  def invoice_date=(str_); end
  def due_date(); end
  def due_date=(str_); end
  def tax_amount(); end
  def tax_amount=(str_); end
end