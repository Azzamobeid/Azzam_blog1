Rails.application.routes.draw do
  devise_for :users
  resources :comments
  resources :posts

  get 'home' => 'posts#index'
  post 'home' => 'posts#index'
  get 'newpost' => 'posts#new'
  post 'newpost' => 'posts#new'

  root 'posts#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
