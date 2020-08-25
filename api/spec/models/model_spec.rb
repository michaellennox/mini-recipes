# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Model, type: :model do
  describe 'associations' do
    it { is_expected.to belong_to(:manufacturer) }
  end

  describe 'indexes' do
    it { is_expected.to have_db_index(:manufacturer_id) }
    it { is_expected.to have_db_index(:name).unique }
  end

  describe 'validations' do
    subject { FactoryBot.build(:model) }

    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_uniqueness_of(:name) }
  end
end
