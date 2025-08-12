# typed: true
# frozen_string_literal: true


class Moov::Models::Components::CardPayment
  extend ::Crystalline::MetadataFields::ClassMethods
end


class Moov::Models::Components::CardPayment
  def statement_descriptor(); end
  def statement_descriptor=(str_); end
end