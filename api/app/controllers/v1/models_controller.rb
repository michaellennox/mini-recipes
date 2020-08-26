# frozen_string_literal: true

module V1
  class ModelsController < ApplicationController
    def index
      @models = Model.name_like(params[:q]).limit(10)

      render :index
    end
  end
end
