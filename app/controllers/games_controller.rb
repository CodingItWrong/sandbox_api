# frozen_string_literal: true

class GamesController < ApiController
  before_action :doorkeeper_authorize!
end
