# typed: true
# frozen_string_literal: true


class Moov::Models::Components::Schedule
  extend ::Crystalline::MetadataFields::ClassMethods
end


class Moov::Models::Components::Schedule
  def cutoff_time(); end
  def cutoff_time=(str_); end
  def timezone(); end
  def timezone=(str_); end
  def frequency(); end
  def frequency=(str_); end
end
