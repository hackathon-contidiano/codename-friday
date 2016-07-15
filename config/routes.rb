Rails.application.routes.draw do

  resources :speeches
  resources :proposals
  resources :congressmen
  resources :political_parties
  root :to => 'home#index'
end
