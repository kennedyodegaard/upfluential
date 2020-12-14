Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :events do
    resources :bookings, only: [:create, :destroy]
    resources :favorites, only: [:create]
  end
  resources :bookings, only: [:show]
  get 'dashboard', to: 'pages#dashboard'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'favorites', to: 'favorites#index'
  get 'organizations/:id', to: 'organizations#show', as: :organization
  delete 'events/:event_id/favorites', to: "favorites#destroy", as: 'event_favorite'
  get 'map', to: "events#map"
end
