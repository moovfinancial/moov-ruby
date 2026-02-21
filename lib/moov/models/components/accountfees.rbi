# typed: true
# frozen_string_literal: true


class Moov::Models::Components::AccountFees
  extend ::Crystalline::MetadataFields::ClassMethods
end


class Moov::Models::Components::AccountFees
  def wallet_fee(); end
  def wallet_fee=(str_); end
  def merchant_pci_fee(); end
  def merchant_pci_fee=(str_); end
  def invoice_payment_fee(); end
  def invoice_payment_fee=(str_); end
  def total(); end
  def total=(str_); end
  def kyb_fee(); end
  def kyb_fee=(str_); end
  def kyc_fee(); end
  def kyc_fee=(str_); end
  def transaction_monitoring_fee(); end
  def transaction_monitoring_fee=(str_); end
end