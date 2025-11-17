# typed: true
# frozen_string_literal: true


class Moov::Models::Components::InstantPaymentFees
  extend ::Crystalline::MetadataFields::ClassMethods
end


class Moov::Models::Components::InstantPaymentFees
  def rtp_credit_transaction(); end
  def rtp_credit_transaction=(str_); end
  def push_to_card_transaction(); end
  def push_to_card_transaction=(str_); end
  def pull_from_card_transaction(); end
  def pull_from_card_transaction=(str_); end
  def instant_verification(); end
  def instant_verification=(str_); end
  def total(); end
  def total=(str_); end
  def rtp_decline(); end
  def rtp_decline=(str_); end
  def push_to_card_decline(); end
  def push_to_card_decline=(str_); end
  def pull_from_card_decline(); end
  def pull_from_card_decline=(str_); end
  def pull_from_card_refund(); end
  def pull_from_card_refund=(str_); end
end