# typed: true
# frozen_string_literal: true


class Moov::Models::Components::TransferProcessingDetails
  extend ::Crystalline::MetadataFields::ClassMethods
end


class Moov::Models::Components::TransferProcessingDetails
  def card_payment(); end
  def card_payment=(str_); end
  def push_to_card(); end
  def push_to_card=(str_); end
  def pull_from_card(); end
  def pull_from_card=(str_); end
  def ach_debit(); end
  def ach_debit=(str_); end
  def ach_credit(); end
  def ach_credit=(str_); end
  def instant_bank_credit(); end
  def instant_bank_credit=(str_); end
  def wire(); end
  def wire=(str_); end
end
