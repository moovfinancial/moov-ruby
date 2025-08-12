# typed: true
# frozen_string_literal: true


class Moov::Models::Components::Sweep
  extend ::Crystalline::MetadataFields::ClassMethods
end


class Moov::Models::Components::Sweep
  def sweep_id(); end
  def sweep_id=(str_); end
  def status(); end
  def status=(str_); end
  def accrued_amount(); end
  def accrued_amount=(str_); end
  def currency(); end
  def currency=(str_); end
  def accrual_started_on(); end
  def accrual_started_on=(str_); end
  def residual_balance(); end
  def residual_balance=(str_); end
  def accrual_ended_on(); end
  def accrual_ended_on=(str_); end
  def push_payment_method_id(); end
  def push_payment_method_id=(str_); end
  def pull_payment_method_id(); end
  def pull_payment_method_id=(str_); end
  def transfer_id(); end
  def transfer_id=(str_); end
  def transfer_amount(); end
  def transfer_amount=(str_); end
  def statement_descriptor(); end
  def statement_descriptor=(str_); end
  def subtotals(); end
  def subtotals=(str_); end
end