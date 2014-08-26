Rails.application.routes.draw do
  resources :users, only: [:index, :destroy, :create, :update, :show]
  resources :contacts, only: [:index, :destroy, :create, :update, :show]
  resources :contact_shares, only: [:create, :destroy]
  resources :users do
    resources :contact_shares, only: :index
  end  
end
