# typed: true
# frozen_string_literal: true


class Moov::Models::Components::BankAccountVerification
  extend ::Crystalline::MetadataFields::ClassMethods
end


class Moov::Models::Components::BankAccountVerification
  def verification_method(); end
  def verification_method=(str_); end
  def status(); end
  def status=(str_); end
  def exception_details(); end
  def exception_details=(str_); end
end