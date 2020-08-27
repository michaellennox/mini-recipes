# frozen_string_literal: true

FactoryBot.define do
  factory :recipe do
    model

    title { Faker::Lorem.sentence(word_count: 3) }
  end
end
