# frozen_string_literal: true

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable,
    :registerable,
    :recoverable,
    :rememberable,
    :trackable,
    :validatable

  has_many :posts
  has_many :restaurants
  has_many :dishes, through: :restaurants
  has_many :systems
  has_many :games, through: :systems
end
