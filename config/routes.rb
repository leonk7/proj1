Rails.application.routes.draw do
  devise_for :trainers
  root to: "home#index"
  resources :trainers

  get '/pokemons/new', to: 'pokemons#new', as: 'pokemons'
  post '/pokemons/new', to:'pokemons#create'
  patch '/capture', to: "pokemons#capture", as: 'capture'
  patch '/damage', to: 'pokemons#damage', as: 'damage'
end
