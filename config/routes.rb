Rails.application.routes.draw do

  root 'homes#top'
  get "/home/about"=>"homes#about", as: "about"
  devise_for :users
  resources :books, only: [:index, :edit, :show, :create, :update, :destroy]
  resources :users, only: [:index, :edit, :show, :update]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
