Rails.application.routes.draw do

  get 'login' => 'sessions#new', as: :login
  post 'login' => 'sessions#create'
  get 'logout' => 'sessions#destroy', as: :logout

  get 'signup' => 'users#new', as: :signup
  post 'users' => 'users#create', as: :user

  resources :posts

  root 'posts#index'
end
