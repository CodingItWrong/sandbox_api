class PostsController < ApiController
  before_action :doorkeeper_authorize!
end
