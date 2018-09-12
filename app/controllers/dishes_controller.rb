# frozen_string_literal: true

class DishesController < ApiController
  before_action :doorkeeper_authorize!
end
