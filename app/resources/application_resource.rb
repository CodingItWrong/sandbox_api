# frozen_string_literal: true

class ApplicationResource < JSONAPI::Resource
  def self.creatable_fields(context)
    super - [:user]
  end

  def self.updatable_fields(context)
    super - [:user]
  end

  private

  def self.current_user(options)
    options.fetch(:context).fetch(:current_user)
  end

  def current_user
    context.fetch(:current_user)
  end
end
