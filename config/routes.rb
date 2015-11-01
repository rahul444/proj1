Rails.application.routes.draw do
  root to: 'home#index'
  patch "/capture", to: "pokemon#capture"
  patch '/damage', to: 'pokemon#damage'
  get 'create', to: 'pokemons'
  post 'new', to: 'pokemons'
  devise_for :trainers
  resources :trainers
end
