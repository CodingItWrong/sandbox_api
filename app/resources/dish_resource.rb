# frozen_string_literal: true

class DishResource < ApplicationResource
  attributes :name, :restaurant
  has_one :restaurant

  def fetchable_fields
    super - [:restaurant]
  end

  def self.records(options = {})
    user = current_user(options)
    user.dishes
  end
end
