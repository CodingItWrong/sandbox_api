# frozen_string_literal: true

class DishResource < ApplicationResource
  attributes :name, :rating, :restaurant
  has_one :restaurant

  def fetchable_fields
    super - %i[restaurant]
  end

  def self.records(options = {})
    user = current_user(options)
    user.dishes
  end
end
