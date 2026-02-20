# typed: true
# frozen_string_literal: true


class Moov::Models::Components::InstantBankTransactionDetails
  extend ::Crystalline::MetadataFields::ClassMethods
end


class Moov::Models::Components::InstantBankTransactionDetails
  def network(); end
  def network=(str_); end
  def status(); end
  def status=(str_); end
  def network_response_code(); end
  def network_response_code=(str_); end
  def failure_code(); end
  def failure_code=(str_); end
  def end_to_end_id(); end
  def end_to_end_id=(str_); end
  def initiated_on(); end
  def initiated_on=(str_); end
  def completed_on(); end
  def completed_on=(str_); end
  def failed_on(); end
  def failed_on=(str_); end
  def accepted_without_posting_on(); end
  def accepted_without_posting_on=(str_); end
end