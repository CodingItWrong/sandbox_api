class SystemsController < ApiController
  before_action :doorkeeper_authorize!
end
