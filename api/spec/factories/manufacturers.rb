# frozen_string_literal: true

FactoryBot.define do
  factory :manufacturer do
    name { Faker::Company.unique.name }
  end
end
