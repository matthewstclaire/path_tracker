Rails.application.routes.draw do
  resources :comments
  resources :workouts do
    resources :comments
  end
  resources :paths
  devise_for :users, :controllers => {registrations: 'registrations', omniauth_callbacks: 'callbacks' }
  
  root to: "paths#index"
end
