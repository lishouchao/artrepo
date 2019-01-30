Rails.application.routes.draw do
  get 'articles/new'
  get 'sessions/new'
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'

  root 'static_pages#home'
  get '/help',	to: 'static_pages#help'
  get '/about',   to: 'static_pages#about'
  get '/contact', to: 'static_pages#contact'

  get '/login',  to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  resources :articles do
    resources :comments
  end
  #resources :comments
  resources :arts
  resources :users
  resources :microposts,only: [:create, :destroy]
  resources :artists
  resources :artworks,only: [:create, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
