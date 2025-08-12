# typed: true
# frozen_string_literal: true


class Moov::Models::Components::WalletTransaction
  extend ::Crystalline::MetadataFields::ClassMethods
end


class Moov::Models::Components::WalletTransaction
  def wallet_id(); end
  def wallet_id=(str_); end
  def transaction_id(); end
  def transaction_id=(str_); end
  def transaction_type(); end
  def transaction_type=(str_); end
  def source_type(); end
  def source_type=(str_); end
  def source_id(); end
  def source_id=(str_); end
  def status(); end
  def status=(str_); end
  def memo(); end
  def memo=(str_); end
  def created_on(); end
  def created_on=(str_); end
  def currency(); end
  def currency=(str_); end
  def gross_amount(); end
  def gross_amount=(str_); end
  def gross_amount_decimal(); end
  def gross_amount_decimal=(str_); end
  def fee(); end
  def fee=(str_); end
  def fee_decimal(); end
  def fee_decimal=(str_); end
  def net_amount(); end
  def net_amount=(str_); end
  def net_amount_decimal(); end
  def net_amount_decimal=(str_); end
  def completed_on(); end
  def completed_on=(str_); end
  def fee_i_ds(); end
  def fee_i_ds=(str_); end
  def available_balance(); end
  def available_balance=(str_); end
  def available_balance_decimal(); end
  def available_balance_decimal=(str_); end
  def sweep_id(); end
  def sweep_id=(str_); end
end