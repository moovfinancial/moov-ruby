# typed: true
# frozen_string_literal: true


class Moov::Models::Components::CardAcquiring
  extend ::Crystalline::MetadataFields::ClassMethods
end


class Moov::Models::Components::CardAcquiring
  def volume_amount(); end
  def volume_amount=(str_); end
  def volume_count(); end
  def volume_count=(str_); end
  def fee_amount(); end
  def fee_amount=(str_); end
  def merchant_fees_collected(); end
  def merchant_fees_collected=(str_); end
  def partner_fees_assessed(); end
  def partner_fees_assessed=(str_); end
  def net_income(); end
  def net_income=(str_); end
  def interchange_fees(); end
  def interchange_fees=(str_); end
end