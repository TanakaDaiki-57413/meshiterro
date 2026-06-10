Rails.application.routes.draw do
  resources :users, only: [:new, :create] , path_names: { new: 'sign_up' }
  resource :session
  resources :passwords, param: :token
  root to: "homes#top"
end
