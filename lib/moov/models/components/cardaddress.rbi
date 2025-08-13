# typed: true
# frozen_string_literal: true


class Moov::Models::Components::CardAddress
  extend ::Crystalline::MetadataFields::ClassMethods
end


class Moov::Models::Components::CardAddress
  def postal_code(); end
  def postal_code=(str_); end
  def address_line1(); end
  def address_line1=(str_); end
  def address_line2(); end
  def address_line2=(str_); end
  def city(); end
  def city=(str_); end
  def state_or_province(); end
  def state_or_province=(str_); end
  def country(); end
  def country=(str_); end
end