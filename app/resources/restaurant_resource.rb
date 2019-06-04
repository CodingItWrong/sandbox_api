# frozen_string_literal: true

class RestaurantResource < ApplicationResource
  attributes :name, :address
  has_many :dishes

  before_create { _model.user = current_user }

  def self.records(options = {})
    user = current_user(options)
    user.restaurants
  end
end
