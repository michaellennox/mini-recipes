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

  describe '.name_like' do
    it 'finds case insensitive matches' do
      matching = FactoryBot.create(:model, name: 'TestName')
      partial_matching = FactoryBot.create(:model, name: 'LongTestNameLonger')
      case_insensitive_match = FactoryBot.create(:model, name: 'testnameother')
      not_matching = FactoryBot.create(:model, name: 'ANOther')

      result = described_class.name_like('TestName').all

      expect(result.length).to eq 3
      expect(result).to include(case_insensitive_match, matching, partial_matching)
      expect(result).not_to include(not_matching)
    end
  end
end
