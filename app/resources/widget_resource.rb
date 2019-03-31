# frozen_string_literal: true

class WidgetResource < JSONAPI::Resource
  immutable

  attributes :name
end
