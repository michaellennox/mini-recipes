# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Recipe, type: :model do
  describe 'associations' do
    it { is_expected.to belong_to(:model) }
  end

  describe 'indexes' do
    it { is_expected.to have_db_index(:model_id) }
  end

  describe 'validations' do
    subject { FactoryBot.build(:recipe) }

    it { is_expected.to validate_presence_of(:title) }
  end
end
