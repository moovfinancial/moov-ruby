# typed: true
# frozen_string_literal: true


class Moov::Models::Components::AuthTokenRequest
  extend ::Crystalline::MetadataFields::ClassMethods
end


class Moov::Models::Components::AuthTokenRequest
  def grant_type(); end
  def grant_type=(str_); end
  def client_id(); end
  def client_id=(str_); end
  def client_secret(); end
  def client_secret=(str_); end
  def scope(); end
  def scope=(str_); end
  def refresh_token(); end
  def refresh_token=(str_); end
end