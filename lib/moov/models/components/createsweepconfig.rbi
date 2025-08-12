# typed: true
# frozen_string_literal: true


class Moov::Models::Components::CreateSweepConfig
  extend ::Crystalline::MetadataFields::ClassMethods
end


class Moov::Models::Components::CreateSweepConfig
  def wallet_id(); end
  def wallet_id=(str_); end
  def status(); end
  def status=(str_); end
  def push_payment_method_id(); end
  def push_payment_method_id=(str_); end
  def pull_payment_method_id(); end
  def pull_payment_method_id=(str_); end
  def statement_descriptor(); end
  def statement_descriptor=(str_); end
  def minimum_balance(); end
  def minimum_balance=(str_); end
end