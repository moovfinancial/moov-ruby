# typed: true
# frozen_string_literal: true


class Moov::Models::Components::PaymentLink
  extend ::Crystalline::MetadataFields::ClassMethods
end


class Moov::Models::Components::PaymentLink
  def code(); end
  def code=(str_); end
  def payment_link_type(); end
  def payment_link_type=(str_); end
  def mode(); end
  def mode=(str_); end
  def status(); end
  def status=(str_); end
  def partner_account_id(); end
  def partner_account_id=(str_); end
  def merchant_account_id(); end
  def merchant_account_id=(str_); end
  def owner_account_id(); end
  def owner_account_id=(str_); end
  def merchant_payment_method_id(); end
  def merchant_payment_method_id=(str_); end
  def link(); end
  def link=(str_); end
  def amount(); end
  def amount=(str_); end
  def uses(); end
  def uses=(str_); end
  def display(); end
  def display=(str_); end
  def customer(); end
  def customer=(str_); end
  def created_on(); end
  def created_on=(str_); end
  def updated_on(); end
  def updated_on=(str_); end
  def max_uses(); end
  def max_uses=(str_); end
  def last_used_on(); end
  def last_used_on=(str_); end
  def expires_on(); end
  def expires_on=(str_); end
  def payment(); end
  def payment=(str_); end
  def payout(); end
  def payout=(str_); end
  def line_items(); end
  def line_items=(str_); end
  def disabled_on(); end
  def disabled_on=(str_); end
end