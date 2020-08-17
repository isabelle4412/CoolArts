Rails.application.routes.draw do
  root to: 'pages#home'
  resources :paintings do
    resources :bookings, only:[:index, :destroy]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :paintings , only: [:index, :show, :new, :create]
  resources :bookings, only: [:index, :create, :new]
end
