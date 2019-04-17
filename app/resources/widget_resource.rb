# frozen_string_literal: true

class WidgetResource < JSONAPI::Resource
  immutable

  has_many :widget_comments

  attributes :name, :description
end
