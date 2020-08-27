# frozen_string_literal: true

module V1
  class RecipesController < ApplicationController
    def create
      @recipe = Recipe.new(recipe_params)

      if @recipe.save
        render :show, status: 201
      else
        @error_messages = @recipe.errors.full_messages
        render 'v1/errors/validation_error', status: 422
      end
    end

    def show
      @recipe = Recipe.find(params[:id])

      render :show
    end

    private

    def recipe_params
      params
        .require(:recipe)
        .permit(:model_id, :title)
    end
  end
end
