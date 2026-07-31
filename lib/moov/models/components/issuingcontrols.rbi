# typed: true
# frozen_string_literal: true


class Moov::Models::Components::IssuingControls
  extend ::Crystalline::MetadataFields::ClassMethods
end


class Moov::Models::Components::IssuingControls
  def single_use(); end
  def single_use=(str_); end
  def velocity_limits(); end
  def velocity_limits=(str_); end
  def merchant_category_restrictions(); end
  def merchant_category_restrictions=(str_); end
  def merchant_restrictions(); end
  def merchant_restrictions=(str_); end
  def allowed_schedule(); end
  def allowed_schedule=(str_); end
  def expires_on(); end
  def expires_on=(str_); end
end
