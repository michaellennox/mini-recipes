# frozen_string_literal: true

require 'swagger_helper'

RSpec.describe 'Models API', type: :request do
  path '/models' do
    get 'Searches for models' do
      tags 'Models'
      description 'Searches for models by query string'
      operationId 'searchModels'
      produces 'application/json'
      parameter name: :q, in: :query, type: :string

      response '200', 'success' do
        schema type: :array, items: {
          type: :object,
          properties: {
            id: { type: :string, format: :uuid },
            manufacturer_id: { type: :string, format: :uuid },
            name: { type: :string }
          }
        }

        let(:q) { 'modelName' }
        let!(:matching_model) { FactoryBot.create(:model, name: 'foomodelname') }
        let!(:unmatching_model) { FactoryBot.create(:model, name: 'nomatch') }

        run_test! do |response|
          data = JSON.parse(response.body)

          expect(data.length).to eq 1
          expect(data).to include(matching_model.slice('id', 'manufacturer_id', 'name'))
        end
      end
    end
  end
end
