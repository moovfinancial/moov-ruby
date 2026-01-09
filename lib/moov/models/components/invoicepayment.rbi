# typed: true
# frozen_string_literal: true


class Moov::Models::Components::InvoicePayment
  extend ::Crystalline::MetadataFields::ClassMethods
end


class Moov::Models::Components::InvoicePayment
  def invoice_payment_id(); end
  def invoice_payment_id=(str_); end
  def invoice_payment_type(); end
  def invoice_payment_type=(str_); end
  def transfer(); end
  def transfer=(str_); end
  def external(); end
  def external=(str_); end
end