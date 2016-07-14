Rails.application.routes.draw do

  resources :congressmen
  resources :political_parties
  root :to => 'home#index'
end
