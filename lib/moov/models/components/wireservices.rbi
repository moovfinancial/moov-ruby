# typed: true
# frozen_string_literal: true


class Moov::Models::Components::WireServices
  extend ::Crystalline::MetadataFields::ClassMethods
end


class Moov::Models::Components::WireServices
  def funds_transfer_status(); end
  def funds_transfer_status=(str_); end
  def funds_settlement_only_status(); end
  def funds_settlement_only_status=(str_); end
  def book_entry_securities_transfer_status(); end
  def book_entry_securities_transfer_status=(str_); end
end