# typed: true
# frozen_string_literal: true


class Moov::Models::Components::Recur
  extend ::Crystalline::MetadataFields::ClassMethods
end


class Moov::Models::Components::Recur
  def recurrence_rule(); end
  def recurrence_rule=(str_); end
  def run_transfer(); end
  def run_transfer=(str_); end
  def indefinite(); end
  def indefinite=(str_); end
  def start(); end
  def start=(str_); end
end