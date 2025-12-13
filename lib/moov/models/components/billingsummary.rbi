# typed: true
# frozen_string_literal: true


class Moov::Models::Components::BillingSummary
  extend ::Crystalline::MetadataFields::ClassMethods
end


class Moov::Models::Components::BillingSummary
  def card_acquiring(); end
  def card_acquiring=(str_); end
  def ach(); end
  def ach=(str_); end
  def instant_payments(); end
  def instant_payments=(str_); end
  def platform_fees(); end
  def platform_fees=(str_); end
  def account_fees(); end
  def account_fees=(str_); end
  def adjustment_fees(); end
  def adjustment_fees=(str_); end
  def other_fees(); end
  def other_fees=(str_); end
  def other_card_fees(); end
  def other_card_fees=(str_); end
  def total(); end
  def total=(str_); end
  def net_income_subtotal(); end
  def net_income_subtotal=(str_); end
  def revenue_share(); end
  def revenue_share=(str_); end
  def residual_subtotal(); end
  def residual_subtotal=(str_); end
  def monthly_partner_costs(); end
  def monthly_partner_costs=(str_); end
  def net_partner_payment(); end
  def net_partner_payment=(str_); end
end