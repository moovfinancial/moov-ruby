# typed: true
# frozen_string_literal: true


class Moov::Models::Components::CreateTransferDestination
  extend ::Crystalline::MetadataFields::ClassMethods
end


class Moov::Models::Components::CreateTransferDestination
  def payment_method_id(); end
  def payment_method_id=(str_); end
  def card_details(); end
  def card_details=(str_); end
  def ach_details(); end
  def ach_details=(str_); end
end