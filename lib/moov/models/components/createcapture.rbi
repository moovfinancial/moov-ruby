# typed: true
# frozen_string_literal: true


class Moov::Models::Components::CreateCapture
  extend ::Crystalline::MetadataFields::ClassMethods
end


class Moov::Models::Components::CreateCapture
  def destination_payment_method_id(); end
  def destination_payment_method_id=(str_); end
  def amount(); end
  def amount=(str_); end
  def is_final(); end
  def is_final=(str_); end
  def description(); end
  def description=(str_); end
  def metadata(); end
  def metadata=(str_); end
  def foreign_id(); end
  def foreign_id=(str_); end
  def line_items(); end
  def line_items=(str_); end
  def amount_details(); end
  def amount_details=(str_); end
  def facilitator_fee_amount(); end
  def facilitator_fee_amount=(str_); end
end
