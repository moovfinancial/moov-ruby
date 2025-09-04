# typed: true
# frozen_string_literal: true


class Moov::Models::Components::Wallet
  extend ::Crystalline::MetadataFields::ClassMethods
end


class Moov::Models::Components::Wallet
  def wallet_id(); end
  def wallet_id=(str_); end
  def available_balance(); end
  def available_balance=(str_); end
  def partner_account_id(); end
  def partner_account_id=(str_); end
  def name(); end
  def name=(str_); end
  def status(); end
  def status=(str_); end
  def wallet_type(); end
  def wallet_type=(str_); end
  def description(); end
  def description=(str_); end
  def created_on(); end
  def created_on=(str_); end
  def metadata(); end
  def metadata=(str_); end
  def closed_on(); end
  def closed_on=(str_); end
end