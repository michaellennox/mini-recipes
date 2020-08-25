# frozen_string_literal: true

class Model < ApplicationRecord
  belongs_to :manufacturer

  validates :name, presence: true, uniqueness: true
end
