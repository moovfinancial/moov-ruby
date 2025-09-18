# typed: true
# frozen_string_literal: true


class Moov::Models::Components::ACHFees
  extend ::Crystalline::MetadataFields::ClassMethods
end


class Moov::Models::Components::ACHFees
  def standard_credit(); end
  def standard_credit=(str_); end
  def same_day_credit(); end
  def same_day_credit=(str_); end
  def debits(); end
  def debits=(str_); end
  def return_(); end
  def return_=(str_); end
  def unauthorized_return(); end
  def unauthorized_return=(str_); end
  def notice_of_change(); end
  def notice_of_change=(str_); end
  def total(); end
  def total=(str_); end
end