# typed: true
# frozen_string_literal: true


class Moov::Models::Components::FeeProperties
  extend ::Crystalline::MetadataFields::ClassMethods
end


class Moov::Models::Components::FeeProperties
  def fixed_amount(); end
  def fixed_amount=(str_); end
  def variable_rate(); end
  def variable_rate=(str_); end
  def min_per_transaction(); end
  def min_per_transaction=(str_); end
  def max_per_transaction(); end
  def max_per_transaction=(str_); end
end