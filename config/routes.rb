Rails.application.routes.draw do
  # mount ActionCable.server => '/cable'
  resources :questions
  resources :games
  resources :rounds
  resources :teams
end
