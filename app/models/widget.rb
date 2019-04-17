# frozen_string_literal: true

class Widget < ApplicationRecord
  has_many :widget_comments
end
