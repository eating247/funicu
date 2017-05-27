Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }

  root 'messages#index'
  resources :messages
  resources :notifications
end
