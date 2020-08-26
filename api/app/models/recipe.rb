# frozen_string_literal: true

class Recipe < ApplicationRecord
  belongs_to :model

  validates :title, presence: true
end
