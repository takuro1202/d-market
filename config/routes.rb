Rails.application.routes.draw do
  devise_for :users
  # devise_for :users
  
  # devise_scope :user do
  #   get 'addresses', to: 'users/registrations#new_address'
  #   post 'addresses', to: 'users/registrations#create_address'
  #   get 'creditcards', to: 'users/registrations#new_creditcard'
  #   post 'creditcards', to: 'users/registrations#create_creditcard'
  # end

  # root 'items#index'
  # resources :users, only: [:show, :edit, :update]do
  #   member do
  #     get 'profile'
  #     patch 'profile_update'
  #     get 'logout'
  #   end
  #   collection do
  #     get 'ready'
  #   end
  # end
  # namespace :items do
  #   resources :searches, only: [:index,:show]
    
  # end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
