# typed: true
# frozen_string_literal: true


class Moov::Models::Components::PlatformFees
  extend ::Crystalline::MetadataFields::ClassMethods
end


class Moov::Models::Components::PlatformFees
  def wallet_fee(); end
  def wallet_fee=(str_); end
  def merchant_pci_fee(); end
  def merchant_pci_fee=(str_); end
  def total(); end
  def total=(str_); end
end