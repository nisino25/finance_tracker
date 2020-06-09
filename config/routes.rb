Rails.application.routes.draw do 
  
  devise_for :users
  resources :user_stocks, only:[:create, :destroy]
  root 'home#welcome'
  get 'my_portfolio', to: 'users#my_portfolio'
  get 'search_stock', to: 'stocks#search'
  get 'my_friends', to: 'users#my_friends'
  get 'search_friend', to: 'users#search'
  resources :friendships, only:[:create, :destroy]
  resources :users, only: [:show]
end
