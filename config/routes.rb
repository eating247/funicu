Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }

  root 'messages#index'
  resources :dashboards, only: [:index]
  resources :messages, only: [:index, :create]
  resources :notifications, only: [:new, :create]
end
