# typed: true
# frozen_string_literal: true


class Moov::Models::Components::IssuedCardAuthorization
  extend ::Crystalline::MetadataFields::ClassMethods
end


class Moov::Models::Components::IssuedCardAuthorization
  def authorization_id(); end
  def authorization_id=(str_); end
  def issued_card_id(); end
  def issued_card_id=(str_); end
  def funding_wallet_id(); end
  def funding_wallet_id=(str_); end
  def network(); end
  def network=(str_); end
  def authorized_amount(); end
  def authorized_amount=(str_); end
  def status(); end
  def status=(str_); end
  def merchant_data(); end
  def merchant_data=(str_); end
  def created_on(); end
  def created_on=(str_); end
  def card_transactions(); end
  def card_transactions=(str_); end
end