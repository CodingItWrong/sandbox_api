class System < ApplicationRecord
  belongs_to :user
  has_many :games

  validates :name, presence: true
end
