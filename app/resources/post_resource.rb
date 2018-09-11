# frozen_string_literal: true

class PostResource < ApplicationResource
  attributes :title, :body

  before_create do
    _model.user = current_user
  end

  def self.records(options = {})
    user = current_user(options)
    user.posts
  end
end
