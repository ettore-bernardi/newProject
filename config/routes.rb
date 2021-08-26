# frozen_string_literal: true

Rails.application.routes.draw do
  get 'management/index'
  root 'home#index'

  resources :products
  resources :orders
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
