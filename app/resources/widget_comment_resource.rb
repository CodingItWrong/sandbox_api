# frozen_string_literal: true

class WidgetCommentResource < JSONAPI::Resource
  immutable

  has_one :widget

  attributes :username, :comment
end
