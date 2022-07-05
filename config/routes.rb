Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # get 'restaurants', to: 'restaurants#index'
  # get 'restaurant', to: 'restaurants#show'

  # get 'restaurant/new', to: 'restaurants#new'
  # post 'restaurants', to: 'restaurants#create'

  resources :restaurants, only: [:index, :show, :new, :create] do
    resources :reviews, only: [:new, :create]
  end
end
