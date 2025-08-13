# typed: true
# frozen_string_literal: true


class Moov::Models::Errors::TerminalApplicationError
  extend ::Crystalline::MetadataFields::ClassMethods
end


class Moov::Models::Errors::TerminalApplicationError
  def platform(); end
  def platform=(str_); end
  def app_bundle_id(); end
  def app_bundle_id=(str_); end
  def package_name(); end
  def package_name=(str_); end
  def sha256_digest(); end
  def sha256_digest=(str_); end
  def version_code(); end
  def version_code=(str_); end
  def raw_response(); end
  def raw_response=(str_); end
end