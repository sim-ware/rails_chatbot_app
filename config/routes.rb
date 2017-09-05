Rails.application.routes.draw do
  resources :questions
  get 'welcome/index'

  
  root 'welcome#index'
end
