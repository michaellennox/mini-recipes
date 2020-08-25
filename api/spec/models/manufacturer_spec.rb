# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Manufacturer, type: :model do
  describe 'indexes' do
    it { is_expected.to have_db_index(:name).unique }
  end

  describe 'validations' do
    subject { FactoryBot.build(:manufacturer) }

    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_uniqueness_of(:name) }
  end
end
