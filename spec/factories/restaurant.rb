# frozen_string_literal: true

FactoryBot.define do
  factory :restaurant do
    sequence(:name) { |n| "Restaurant #{n}" }
    sequence(:address) { |n| "#{n} Main Street" }
    user
  end
end
