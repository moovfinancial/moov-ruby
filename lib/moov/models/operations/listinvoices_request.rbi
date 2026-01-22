# typed: true
# frozen_string_literal: true


class Moov::Models::Operations::ListInvoicesRequest
  extend ::Crystalline::MetadataFields::ClassMethods
end


class Moov::Models::Operations::ListInvoicesRequest
  def account_id(); end
  def account_id=(str_); end
  def x_moov_version(); end
  def x_moov_version=(str_); end
  def skip(); end
  def skip=(str_); end
  def count(); end
  def count=(str_); end
  def status(); end
  def status=(str_); end
  def customer_account_id(); end
  def customer_account_id=(str_); end
  def created_start_date_time(); end
  def created_start_date_time=(str_); end
  def created_end_date_time(); end
  def created_end_date_time=(str_); end
  def due_start_date_time(); end
  def due_start_date_time=(str_); end
  def due_end_date_time(); end
  def due_end_date_time=(str_); end
end