# frozen_string_literal: true

class SystemsController < ApiController
  before_action :doorkeeper_authorize!
end
