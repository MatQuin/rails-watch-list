Rails.application.routes.draw do
  # get 'lists/new'
  # get 'bookmarks/new'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"
    root to: 'lists#index'

  resources :lists  do
    resources :bookmarks, only: [:new, :create]
  end

  resources :bookmarks, only: [:destroy, :new, :create]
  resources :movies
  end
