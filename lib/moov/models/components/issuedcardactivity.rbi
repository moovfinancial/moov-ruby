# typed: true
# frozen_string_literal: true


class Moov::Models::Components::IssuedCardActivity
  extend ::Crystalline::MetadataFields::ClassMethods
end


class Moov::Models::Components::IssuedCardActivity
  def status(); end
  def status=(str_); end
  def issued_card_id(); end
  def issued_card_id=(str_); end
  def created_on(); end
  def created_on=(str_); end
  def merchant_data(); end
  def merchant_data=(str_); end
  def authorization_id(); end
  def authorization_id=(str_); end
  def card_transaction_id(); end
  def card_transaction_id=(str_); end
  def last_four_card_number(); end
  def last_four_card_number=(str_); end
  def authorized_user_account_id(); end
  def authorized_user_account_id=(str_); end
  def authorized_amount(); end
  def authorized_amount=(str_); end
  def cleared_amount(); end
  def cleared_amount=(str_); end
  def decline_reason(); end
  def decline_reason=(str_); end
end
