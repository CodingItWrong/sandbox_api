class GamesController < ApiController
  before_action :doorkeeper_authorize!
end
