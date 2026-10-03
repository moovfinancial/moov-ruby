# typed: true
# frozen_string_literal: true


class Moov::Models::Components::TransferEventDetails
  extend ::Crystalline::MetadataFields::ClassMethods
end


class Moov::Models::Components::TransferEventDetails
  def transfer(); end
  def transfer=(str_); end
  def authorization(); end
  def authorization=(str_); end
  def capture(); end
  def capture=(str_); end
  def refund(); end
  def refund=(str_); end
  def cancellation(); end
  def cancellation=(str_); end
  def dispute(); end
  def dispute=(str_); end
  def ach_credit(); end
  def ach_credit=(str_); end
  def ach_debit(); end
  def ach_debit=(str_); end
  def instant_bank_credit(); end
  def instant_bank_credit=(str_); end
  def wire_credit(); end
  def wire_credit=(str_); end
  def card_payment(); end
  def card_payment=(str_); end
  def push_to_card(); end
  def push_to_card=(str_); end
  def pull_from_card(); end
  def pull_from_card=(str_); end
  def wallet_credit(); end
  def wallet_credit=(str_); end
  def wallet_debit(); end
  def wallet_debit=(str_); end
end
