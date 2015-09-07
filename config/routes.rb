Rails.application.routes.draw do
  get 'omniauth_callbacks/facebook'

  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  mount Upmin::Engine => '/admin'
  root to: 'visitors#index'
  # devise_for :users
  resources :users
end
