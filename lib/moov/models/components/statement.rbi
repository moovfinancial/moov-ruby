# typed: true
# frozen_string_literal: true


class Moov::Models::Components::Statement
  extend ::Crystalline::MetadataFields::ClassMethods
end


class Moov::Models::Components::Statement
  def statement_id(); end
  def statement_id=(str_); end
  def statement_name(); end
  def statement_name=(str_); end
  def file_name(); end
  def file_name=(str_); end
  def file_size(); end
  def file_size=(str_); end
  def billing_period_start_date_time(); end
  def billing_period_start_date_time=(str_); end
  def billing_period_end_date_time(); end
  def billing_period_end_date_time=(str_); end
  def subscription_i_ds(); end
  def subscription_i_ds=(str_); end
  def summary(); end
  def summary=(str_); end
  def created_on(); end
  def created_on=(str_); end
  def updated_on(); end
  def updated_on=(str_); end
  def card_acquiring_fees(); end
  def card_acquiring_fees=(str_); end
  def ach_fees(); end
  def ach_fees=(str_); end
  def instant_payment_fees(); end
  def instant_payment_fees=(str_); end
  def platform_fees(); end
  def platform_fees=(str_); end
  def account_fees(); end
  def account_fees=(str_); end
  def other_card_fees(); end
  def other_card_fees=(str_); end
  def partner_fees(); end
  def partner_fees=(str_); end
end