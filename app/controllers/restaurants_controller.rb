# frozen_string_literal: true

class RestaurantsController < ApiController
  before_action :doorkeeper_authorize!
end
