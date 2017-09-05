Rails.application.routes.draw do
  resources :messages
  resources :questions
  get 'welcome/index'

  
  root 'welcome#index'
end
