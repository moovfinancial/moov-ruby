# typed: true
# frozen_string_literal: true


class Moov::Models::Components::IssuedCardTransaction
  extend ::Crystalline::MetadataFields::ClassMethods
end


class Moov::Models::Components::IssuedCardTransaction
  def card_transaction_id(); end
  def card_transaction_id=(str_); end
  def issued_card_id(); end
  def issued_card_id=(str_); end
  def funding_wallet_id(); end
  def funding_wallet_id=(str_); end
  def amount(); end
  def amount=(str_); end
  def authorized_on(); end
  def authorized_on=(str_); end
  def merchant_data(); end
  def merchant_data=(str_); end
  def created_on(); end
  def created_on=(str_); end
  def authorization_id(); end
  def authorization_id=(str_); end
end