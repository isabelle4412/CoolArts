Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :paintings, only: [:index, :show, :new, :create] do
    resources :bookings, only: [:index]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  namespace :owner do
    resources :paintings, only: [:index]
  end

  resources :bookings, only: [:index, :create, :new] do
    member do
      patch 'accept'
      patch 'decline'
    end
  end
end

