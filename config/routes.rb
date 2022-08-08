# frozen_string_literal: true

Rails.application.routes.draw do
  resources :restaurants
  root 'application#index'

  resource :lucky, only: [] do
    get :restaurant
  end

  resources :places do
    resources :restaurants
  end
end
