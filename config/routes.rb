Rails.application.routes.draw do
  root 'movements#index'
  resources :movements
  devise_for :users
end
