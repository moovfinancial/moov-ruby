# typed: true
# frozen_string_literal: true


class Moov::Models::Components::Webhook
  extend ::Crystalline::MetadataFields::ClassMethods
end


class Moov::Models::Components::Webhook
  def webhook_id(); end
  def webhook_id=(str_); end
  def url(); end
  def url=(str_); end
  def status(); end
  def status=(str_); end
  def event_types(); end
  def event_types=(str_); end
  def description(); end
  def description=(str_); end
  def created_on(); end
  def created_on=(str_); end
  def updated_on(); end
  def updated_on=(str_); end
  def last_used_on(); end
  def last_used_on=(str_); end
end