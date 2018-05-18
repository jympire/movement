Rails.application.routes.draw do
  root 'pages#home'

  get 'about' , to: 'pages#about'

  get 'support' , to: 'pages#support'

  get 'terms' , to: 'pages#terms'

  get '/terms/privacy_policy' , to: 'pages#privacy'

  resources :movements
  devise_for :users
end
