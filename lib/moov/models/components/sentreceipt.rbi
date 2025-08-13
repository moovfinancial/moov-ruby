# typed: true
# frozen_string_literal: true


class Moov::Models::Components::SentReceipt
  extend ::Crystalline::MetadataFields::ClassMethods
end


class Moov::Models::Components::SentReceipt
  def receipt_id(); end
  def receipt_id=(str_); end
  def idempotency_key(); end
  def idempotency_key=(str_); end
  def sent_on(); end
  def sent_on=(str_); end
end