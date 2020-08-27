# frozen_string_literal: true

require 'swagger_helper'

RSpec.describe 'Recipes API', type: :request do
  path '/recipes' do
    post 'Create a recipe' do
      tags 'Recipes'
      description 'Creates a recipe'
      operationId 'createRecipe'
      consumes 'application/json'
      produces 'application/json'
      parameter name: :recipe, in: :body, schema: { '$ref' => '#/components/schemas/newRecipe' }

      response '201', 'recipe created successfully' do
        let!(:model) { FactoryBot.create(:model) }
        let(:recipe) { { modelId: model.id, title: 'RecipeTitle' } }

        schema '$ref' => '#/components/schemas/recipe'

        run_test! do |response|
          data = JSON.parse(response.body)

          expect(data['title']).to eq 'RecipeTitle'
          expect(data['modelId']).to eq model.id
        end
      end

      response '422', 'recipe input was invalid' do
        let!(:model) { FactoryBot.create(:model) }
        let(:recipe) { { modelId: model.id, title: nil } }

        schema '$ref' => '#/components/schemas/validationError'

        run_test! do |response|
          data = JSON.parse(response.body)

          errors = data['errors']
          expect(errors.length).to eq 1
          expect(errors[0]).to eq "Title can't be blank"
        end
      end
    end
  end

  path '/recipes/{id}' do
    get 'Retrieve a recipe' do
      tags 'Recipes'
      description 'Retrieves a recipe'
      operationId 'retrieveRecipe'
      produces 'application/json'
      parameter name: :id, in: :path, type: :string, format: :uuid

      response '200', 'recipe found' do
        let!(:recipe) { FactoryBot.create(:recipe) }
        let(:id) { recipe.id }

        schema '$ref' => '#/components/schemas/recipe'

        run_test! do |response|
          data = JSON.parse(response.body)

          expect(data).to include(
            'id' => recipe.id,
            'title' => recipe.title,
            'modelId' => recipe.model_id
          )
        end
      end

      response '404', 'recipe not found' do
        let(:id) { SecureRandom.uuid }

        schema '$ref' => '#/components/schemas/notFoundError'

        run_test!
      end
    end
  end
end
