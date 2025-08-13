# typed: true
# frozen_string_literal: true


class Moov::Models::Components::FeePlan
  extend ::Crystalline::MetadataFields::ClassMethods
end


class Moov::Models::Components::FeePlan
  def plan_id(); end
  def plan_id=(str_); end
  def name(); end
  def name=(str_); end
  def card_acquiring_model(); end
  def card_acquiring_model=(str_); end
  def billable_fees(); end
  def billable_fees=(str_); end
  def minimum_commitment(); end
  def minimum_commitment=(str_); end
  def monthly_platform_fee(); end
  def monthly_platform_fee=(str_); end
  def created_at(); end
  def created_at=(str_); end
  def description(); end
  def description=(str_); end
end