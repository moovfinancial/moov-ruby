# typed: true
# frozen_string_literal: true


class Moov::Models::Operations::ListIssuedCardAuthorizationsRequest
  extend ::Crystalline::MetadataFields::ClassMethods
end


class Moov::Models::Operations::ListIssuedCardAuthorizationsRequest
  def account_id(); end
  def account_id=(str_); end
  def skip(); end
  def skip=(str_); end
  def count(); end
  def count=(str_); end
  def issued_card_id(); end
  def issued_card_id=(str_); end
  def start_date_time(); end
  def start_date_time=(str_); end
  def end_date_time(); end
  def end_date_time=(str_); end
  def statuses(); end
  def statuses=(str_); end
  def x_moov_version(); end
  def x_moov_version=(str_); end
end