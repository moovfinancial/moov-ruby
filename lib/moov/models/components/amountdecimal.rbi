# typed: true
# frozen_string_literal: true


class Moov::Models::Components::AmountDecimal
  extend ::Crystalline::MetadataFields::ClassMethods
end


class Moov::Models::Components::AmountDecimal
  def currency(); end
  def currency=(str_); end
  def value_decimal(); end
  def value_decimal=(str_); end
end