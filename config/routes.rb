Rails.application.routes.draw do
  resources :users, only: [:index, :destroy, :create, :update, :show]
  resources :contacts, only: [:index, :destroy, :create, :update, :show]
end
