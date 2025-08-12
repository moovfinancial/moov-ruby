# typed: true
# frozen_string_literal: true


class Moov::Models::Components::FullIssuedCard
  extend ::Crystalline::MetadataFields::ClassMethods
end


class Moov::Models::Components::FullIssuedCard
  def issued_card_id(); end
  def issued_card_id=(str_); end
  def brand(); end
  def brand=(str_); end
  def last_four_card_number(); end
  def last_four_card_number=(str_); end
  def expiration(); end
  def expiration=(str_); end
  def authorized_user(); end
  def authorized_user=(str_); end
  def funding_wallet_id(); end
  def funding_wallet_id=(str_); end
  def state(); end
  def state=(str_); end
  def form_factor(); end
  def form_factor=(str_); end
  def created_on(); end
  def created_on=(str_); end
  def pan(); end
  def pan=(str_); end
  def cvv(); end
  def cvv=(str_); end
  def memo(); end
  def memo=(str_); end
  def controls(); end
  def controls=(str_); end
end