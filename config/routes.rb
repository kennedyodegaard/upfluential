Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :events do
    resources :bookings, only: [:create, :destroy]
    resources :favorites, only: [:create]
  end
  resources :bookings, only: [:show]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'organizations/:id', to: 'organizations#show'
  delete 'events/:event_id/favorites', to: "favorites#destroy", as: 'event_favorite'
end
