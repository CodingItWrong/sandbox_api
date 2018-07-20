# frozen_string_literal: true

class PostsController < ApiController
  before_action :doorkeeper_authorize!
end
