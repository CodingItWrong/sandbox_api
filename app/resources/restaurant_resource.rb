# frozen_string_literal: true

class RestaurantResource < ApplicationResource
  attribute :name

  before_create do
    _model.user = current_user
  end

  def self.records(options = {})
    user = current_user(options)
    user.restaurants
  end
end
