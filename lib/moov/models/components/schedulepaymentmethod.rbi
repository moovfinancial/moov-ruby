# typed: true
# frozen_string_literal: true


class Moov::Models::Components::SchedulePaymentMethod
  extend ::Crystalline::MetadataFields::ClassMethods
end


class Moov::Models::Components::SchedulePaymentMethod
  def payment_method_id(); end
  def payment_method_id=(str_); end
  def ach_details(); end
  def ach_details=(str_); end
  def card_details(); end
  def card_details=(str_); end
end