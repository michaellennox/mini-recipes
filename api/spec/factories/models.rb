# frozen_string_literal: true

FactoryBot.define do
  factory :model do
    manufacturer

    name { |n| "model-#{n}" }
  end
end
