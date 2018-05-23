Rails.application.routes.draw do
  mount StripeEvent::Engine, at: '/webhooks/stripe'
  
  root 'pages#home'

  get 'about' , to: 'pages#about'

  get 'support' , to: 'pages#support'

  get 'terms' , to: 'pages#terms'
  
  get 'pricing' , to: 'pages#pricing'

  get '/terms/privacy_policy' , to: 'pages#privacy'
  
  resource :subscription
  resources :movements
  devise_for :users
end
