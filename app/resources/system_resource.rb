# frozen_string_literal: true

class SystemResource < ApplicationResource
  attributes :name
  has_many :games

  before_create { _model.user = current_user }

  def self.records(options = {})
    user = current_user(options)
    user.systems
  end
end
