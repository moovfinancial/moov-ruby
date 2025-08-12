# typed: true
# frozen_string_literal: true


class Moov::Models::Components::Dispute
  extend ::Crystalline::MetadataFields::ClassMethods
end


class Moov::Models::Components::Dispute
  def dispute_id(); end
  def dispute_id=(str_); end
  def merchant_account_id(); end
  def merchant_account_id=(str_); end
  def amount(); end
  def amount=(str_); end
  def network_reason_code(); end
  def network_reason_code=(str_); end
  def transfer(); end
  def transfer=(str_); end
  def respond_by(); end
  def respond_by=(str_); end
  def status(); end
  def status=(str_); end
  def phase(); end
  def phase=(str_); end
  def created_on(); end
  def created_on=(str_); end
  def network_reason_description(); end
  def network_reason_description=(str_); end
  def submitted_on(); end
  def submitted_on=(str_); end
end