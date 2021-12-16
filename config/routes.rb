Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :offers do
    resources :reservations, only: [:new, :create]
  end
  resources :reservations, only: [:show, :destroy] do
    member do
      patch :accept, :decline
    end
  end
end
