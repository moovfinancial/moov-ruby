# typed: true
# frozen_string_literal: true


class Moov::Models::Operations::ListDisputesRequest
  extend ::Crystalline::MetadataFields::ClassMethods
end


class Moov::Models::Operations::ListDisputesRequest
  def account_id(); end
  def account_id=(str_); end
  def x_moov_version(); end
  def x_moov_version=(str_); end
  def skip(); end
  def skip=(str_); end
  def count(); end
  def count=(str_); end
  def start_date_time(); end
  def start_date_time=(str_); end
  def end_date_time(); end
  def end_date_time=(str_); end
  def respond_start_date_time(); end
  def respond_start_date_time=(str_); end
  def respond_end_date_time(); end
  def respond_end_date_time=(str_); end
  def status(); end
  def status=(str_); end
  def merchant_account_id(); end
  def merchant_account_id=(str_); end
  def cardholder_account_id(); end
  def cardholder_account_id=(str_); end
  def dispute_i_ds(); end
  def dispute_i_ds=(str_); end
  def transfer_i_ds(); end
  def transfer_i_ds=(str_); end
  def order_by(); end
  def order_by=(str_); end
end