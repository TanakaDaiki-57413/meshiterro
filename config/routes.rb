Rails.application.routes.draw do

  resources :post_images, only: [:new,:create, :index, :show,:destroy]

  resources :users, only: [:new, :create, :show, :edit] , path_names: { new: 'sign_up' }

  resource :session

  resources :passwords, param: :token

  root to: "homes#top"
  #名前付きルートをaboutに
  get "homes/about", to: "homes#about", as: "about"

end
