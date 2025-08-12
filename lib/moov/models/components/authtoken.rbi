# typed: true
# frozen_string_literal: true


class Moov::Models::Components::AuthToken
  extend ::Crystalline::MetadataFields::ClassMethods
end


class Moov::Models::Components::AuthToken
  def token_type(); end
  def token_type=(str_); end
  def access_token(); end
  def access_token=(str_); end
  def refresh_token(); end
  def refresh_token=(str_); end
  def expires_in(); end
  def expires_in=(str_); end
  def scope(); end
  def scope=(str_); end
end