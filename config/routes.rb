Rails.application.routes.draw do
  # get 'contenus/index'

  # get 'contenus/show'

  # get 'contenus/new'

  # get 'contenus/create'

  # get 'contenus/edit'

  # get 'contenus/update'

  # get 'contenus/destroy'

  # get 'reservations/index'

  # get 'reservations/show'

  # get 'reservations/new'

  # get 'reservations/create'

  # get 'reservations/edit'

  # get 'reservations/update'

  # get 'reservations/destroy'
  # get 'courses/index'

  # get 'courses/show'

  # get 'courses/new'

  # get 'courses/create'

  # get 'courses/edit'

  # get 'courses/update'

  # get 'courses/destroy'

  resources :courses do
    resources :contenus
  end

  get 'courses/contenu' => 'courses#contenu'

   resources :users, only: [:show, :update, :destroy] do
    resources :reservations, only: [:index]
  end



  get 'omniauth_callbacks/facebook'

  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  mount Upmin::Engine => '/admin'
  root to: 'courses#index'
  # devise_for :users
  # resources :users
end
