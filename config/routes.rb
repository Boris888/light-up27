Rails.application.routes.draw do
  # get 'courses/index'

  # get 'courses/show'

  # get 'courses/new'

  # get 'courses/create'

  # get 'courses/edit'

  # get 'courses/update'

  # get 'courses/destroy'



  get 'omniauth_callbacks/facebook'

  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  mount Upmin::Engine => '/admin'
  root to: 'courses#index'
  # devise_for :users
  resources :users
end
