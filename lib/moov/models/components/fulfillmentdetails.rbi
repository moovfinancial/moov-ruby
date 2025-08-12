# typed: true
# frozen_string_literal: true


class Moov::Models::Components::FulfillmentDetails
  extend ::Crystalline::MetadataFields::ClassMethods
end


class Moov::Models::Components::FulfillmentDetails
  def has_physical_goods(); end
  def has_physical_goods=(str_); end
  def is_shipping_product(); end
  def is_shipping_product=(str_); end
  def shipment_duration_days(); end
  def shipment_duration_days=(str_); end
  def return_policy(); end
  def return_policy=(str_); end
end