# frozen_string_literal: true

class Manufacturer < ApplicationRecord
  validates :name, presence: true, uniqueness: true
end
