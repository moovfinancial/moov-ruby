# typed: true
# frozen_string_literal: true


class Moov::Models::Components::TransferAuthorization
  extend ::Crystalline::MetadataFields::ClassMethods
end


class Moov::Models::Components::TransferAuthorization
  def authorization_id(); end
  def authorization_id=(str_); end
  def requested_amount(); end
  def requested_amount=(str_); end
  def authorized_amount(); end
  def authorized_amount=(str_); end
  def captured_amount(); end
  def captured_amount=(str_); end
  def capturable_amount(); end
  def capturable_amount=(str_); end
  def expires_on(); end
  def expires_on=(str_); end
end
