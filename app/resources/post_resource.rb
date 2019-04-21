# frozen_string_literal: true

class PostResource < ApplicationResource
  attributes :title, :body

  before_create { _model.user = current_user }

  def self.records(options = {})
    user = current_user(options)
    user.posts
  end
end
