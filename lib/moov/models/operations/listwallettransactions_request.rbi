# typed: true
# frozen_string_literal: true


class Moov::Models::Operations::ListWalletTransactionsRequest
  extend ::Crystalline::MetadataFields::ClassMethods
end


class Moov::Models::Operations::ListWalletTransactionsRequest
  def account_id(); end
  def account_id=(str_); end
  def wallet_id(); end
  def wallet_id=(str_); end
  def x_moov_version(); end
  def x_moov_version=(str_); end
  def skip(); end
  def skip=(str_); end
  def count(); end
  def count=(str_); end
  def transaction_type(); end
  def transaction_type=(str_); end
  def transaction_types(); end
  def transaction_types=(str_); end
  def source_type(); end
  def source_type=(str_); end
  def source_id(); end
  def source_id=(str_); end
  def status(); end
  def status=(str_); end
  def created_start_date_time(); end
  def created_start_date_time=(str_); end
  def created_end_date_time(); end
  def created_end_date_time=(str_); end
  def completed_start_date_time(); end
  def completed_start_date_time=(str_); end
  def completed_end_date_time(); end
  def completed_end_date_time=(str_); end
  def sweep_id(); end
  def sweep_id=(str_); end
end