# frozen_string_literal: true

FactoryBot.define do
  factory :post do
    sequence(:title) { |n| "Post #{n}" }
    sequence(:body) { |n| "Body #{n}" }
    user
  end
end
