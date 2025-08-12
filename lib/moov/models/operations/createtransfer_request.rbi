# typed: true
# frozen_string_literal: true


class Moov::Models::Operations::CreateTransferRequest
  extend ::Crystalline::MetadataFields::ClassMethods
end


class Moov::Models::Operations::CreateTransferRequest
  def x_idempotency_key(); end
  def x_idempotency_key=(str_); end
  def account_id(); end
  def account_id=(str_); end
  def create_transfer(); end
  def create_transfer=(str_); end
  def x_wait_for(); end
  def x_wait_for=(str_); end
  def x_moov_version(); end
  def x_moov_version=(str_); end
end