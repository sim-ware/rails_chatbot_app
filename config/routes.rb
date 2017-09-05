Rails.application.routes.draw do
  resources :rounds
  resources :messages
  resources :questions
  get 'welcome/index'

  root 'welcome#index'
end
