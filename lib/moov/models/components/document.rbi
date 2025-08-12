# typed: true
# frozen_string_literal: true


class Moov::Models::Components::Document
  extend ::Crystalline::MetadataFields::ClassMethods
end


class Moov::Models::Components::Document
  def document_id(); end
  def document_id=(str_); end
  def type(); end
  def type=(str_); end
  def content_type(); end
  def content_type=(str_); end
  def uploaded_at(); end
  def uploaded_at=(str_); end
  def parse_errors(); end
  def parse_errors=(str_); end
end