# typed: true
# frozen_string_literal: true


class Moov::Models::Components::InvoiceTransferPayment
  extend ::Crystalline::MetadataFields::ClassMethods
end


class Moov::Models::Components::InvoiceTransferPayment
  def payment_type(); end
  def payment_type=(str_); end
  def transfer_id(); end
  def transfer_id=(str_); end
end