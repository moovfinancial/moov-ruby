# typed: true
# frozen_string_literal: true


class Moov::Models::Components::Underwriting
  extend ::Crystalline::MetadataFields::ClassMethods
end


class Moov::Models::Components::Underwriting
  def average_transaction_size(); end
  def average_transaction_size=(str_); end
  def max_transaction_size(); end
  def max_transaction_size=(str_); end
  def average_monthly_transaction_volume(); end
  def average_monthly_transaction_volume=(str_); end
  def status(); end
  def status=(str_); end
  def volume_by_customer_type(); end
  def volume_by_customer_type=(str_); end
  def card_volume_distribution(); end
  def card_volume_distribution=(str_); end
  def fulfillment(); end
  def fulfillment=(str_); end
  def geographic_reach(); end
  def geographic_reach=(str_); end
  def business_presence(); end
  def business_presence=(str_); end
  def pending_litigation(); end
  def pending_litigation=(str_); end
  def volume_share_by_customer_type(); end
  def volume_share_by_customer_type=(str_); end
  def collect_funds(); end
  def collect_funds=(str_); end
  def money_transfer(); end
  def money_transfer=(str_); end
  def send_funds(); end
  def send_funds=(str_); end
end