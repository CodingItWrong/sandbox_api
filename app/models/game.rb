# frozen_string_literal: true

class Game < ApplicationRecord
  belongs_to :system

  validates :title, presence: true
  validates :year, presence: true
end
