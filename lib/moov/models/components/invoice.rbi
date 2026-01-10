# typed: true
# frozen_string_literal: true


class Moov::Models::Components::Invoice
  extend ::Crystalline::MetadataFields::ClassMethods
end


class Moov::Models::Components::Invoice
  def invoice_id(); end
  def invoice_id=(str_); end
  def invoice_number(); end
  def invoice_number=(str_); end
  def customer_account_id(); end
  def customer_account_id=(str_); end
  def partner_account_id(); end
  def partner_account_id=(str_); end
  def status(); end
  def status=(str_); end
  def line_items(); end
  def line_items=(str_); end
  def subtotal_amount(); end
  def subtotal_amount=(str_); end
  def tax_amount(); end
  def tax_amount=(str_); end
  def total_amount(); end
  def total_amount=(str_); end
  def pending_amount(); end
  def pending_amount=(str_); end
  def paid_amount(); end
  def paid_amount=(str_); end
  def refunded_amount(); end
  def refunded_amount=(str_); end
  def disputed_amount(); end
  def disputed_amount=(str_); end
  def created_on(); end
  def created_on=(str_); end
  def description(); end
  def description=(str_); end
  def payment_link_code(); end
  def payment_link_code=(str_); end
  def invoice_payments(); end
  def invoice_payments=(str_); end
  def invoice_date(); end
  def invoice_date=(str_); end
  def due_date(); end
  def due_date=(str_); end
  def sent_on(); end
  def sent_on=(str_); end
  def paid_on(); end
  def paid_on=(str_); end
  def canceled_on(); end
  def canceled_on=(str_); end
end