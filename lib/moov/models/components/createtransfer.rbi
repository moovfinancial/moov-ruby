# typed: true
# frozen_string_literal: true


class Moov::Models::Components::CreateTransfer
  extend ::Crystalline::MetadataFields::ClassMethods
end


class Moov::Models::Components::CreateTransfer
  def source(); end
  def source=(str_); end
  def destination(); end
  def destination=(str_); end
  def amount(); end
  def amount=(str_); end
  def facilitator_fee(); end
  def facilitator_fee=(str_); end
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
  def fee_paid_by(); end
  def fee_paid_by=(str_); end
end
