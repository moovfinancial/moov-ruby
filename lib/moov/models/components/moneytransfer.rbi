# typed: true
# frozen_string_literal: true


class Moov::Models::Components::MoneyTransfer
  extend ::Crystalline::MetadataFields::ClassMethods
end


class Moov::Models::Components::MoneyTransfer
  def pull_from_card(); end
  def pull_from_card=(str_); end
  def push_to_card(); end
  def push_to_card=(str_); end
end