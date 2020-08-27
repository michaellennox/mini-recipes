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
        schema type: :array, items: { '$ref' => '#/components/schemas/model' }

        let(:q) { 'modelName' }
        let!(:matching_model) { FactoryBot.create(:model, name: 'foomodelname') }
        let!(:unmatching_model) { FactoryBot.create(:model, name: 'nomatch') }

        run_test! do |response|
          data = JSON.parse(response.body)

          expect(data.length).to eq 1
          expect(data[0]).to include(
            'id' => matching_model.id,
            'manufacturerId' => matching_model.manufacturer_id,
            'name' => matching_model.name
          )
        end
      end
    end
  end
end
