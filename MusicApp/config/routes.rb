Rails.application.routes.draw do


  resources :tracks, only: [:new, :create, :edit, :show, :update, :destroy]
  resources :albums, only: [:new, :create, :edit, :show, :update, :destroy]
  resources :albums

  resources :bands, only: [:index, :create, :new, :edit, :show, :update, :destroy]

  resources :users, only: [:create, :new, :show]
  resource :session, only: [:create, :new, :destroy]


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
