# typed: true
# frozen_string_literal: true


class Moov::Models::Components::Ticket
  extend ::Crystalline::MetadataFields::ClassMethods
end


class Moov::Models::Components::Ticket
  def ticket_id(); end
  def ticket_id=(str_); end
  def number(); end
  def number=(str_); end
  def title(); end
  def title=(str_); end
  def contact(); end
  def contact=(str_); end
  def status(); end
  def status=(str_); end
  def created_on(); end
  def created_on=(str_); end
  def updated_on(); end
  def updated_on=(str_); end
  def latest_message_on(); end
  def latest_message_on=(str_); end
  def closed_on(); end
  def closed_on=(str_); end
end