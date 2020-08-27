# frozen_string_literal: true

Rails.application.routes.draw do
  scope 'api' do
    namespace :v1 do
      resources :models, only: :index
      resources :recipes, only: %i[create show]
    end
  end

  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
