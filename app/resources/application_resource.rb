# frozen_string_literal: true

class ApplicationResource < JSONAPI::Resource
  abstract

  def self.creatable_fields(context)
    super - %i[user]
  end

  def self.updatable_fields(context)
    super - %i[user]
  end

  private

  def current_user
    context.fetch(:current_user)
  end

  class << self
    private

    def current_user(options)
      options.fetch(:context).fetch(:current_user)
    end
  end
end
