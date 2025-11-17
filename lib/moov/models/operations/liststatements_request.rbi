# typed: true
# frozen_string_literal: true


class Moov::Models::Operations::ListStatementsRequest
  extend ::Crystalline::MetadataFields::ClassMethods
end


class Moov::Models::Operations::ListStatementsRequest
  def account_id(); end
  def account_id=(str_); end
  def x_moov_version(); end
  def x_moov_version=(str_); end
  def billing_period_start_date_time(); end
  def billing_period_start_date_time=(str_); end
  def billing_period_end_date_time(); end
  def billing_period_end_date_time=(str_); end
  def skip(); end
  def skip=(str_); end
  def count(); end
  def count=(str_); end
end