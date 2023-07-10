Rails.application.routes.draw do

  root 'homes#top'
  get 'home/about'
  devise_for :users
  resources :books, only: [:index, :edit, :show, :create, :updete, :destroy]
 resources :users, only: [:index, :create, :edit, :show, :update]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
