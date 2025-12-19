# typed: true
# frozen_string_literal: true


class Moov::Models::Components::ShareScopes
  extend ::Crystalline::MetadataFields::ClassMethods
end


class Moov::Models::Components::ShareScopes
  def principal_account_id(); end
  def principal_account_id=(str_); end
  def allow_scopes(); end
  def allow_scopes=(str_); end
end