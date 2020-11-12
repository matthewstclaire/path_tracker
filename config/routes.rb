Rails.application.routes.draw do
  resources :comments
  resources :workouts do
    resources :comments
  end
  resources :paths
  devise_for :users, :controllers => {registrations: 'registrations', omniauth_callbacks: 'callbacks' }
  
  get 'workouts/active_user' => 'workouts#active_user', as: 'active'

  root to: "workouts#index"
end
