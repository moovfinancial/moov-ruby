# typed: true
# frozen_string_literal: true


class Moov::Models::Components::CreateAccountSettings
  extend ::Crystalline::MetadataFields::ClassMethods
end


class Moov::Models::Components::CreateAccountSettings
  def card_payment(); end
  def card_payment=(str_); end
  def ach_payment(); end
  def ach_payment=(str_); end
end