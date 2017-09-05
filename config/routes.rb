Rails.application.routes.draw do
  get 'fail/index'

  get 'win/index'

  resources :rounds
  resources :messages
  resources :questions
  get 'welcome/index'

  root 'welcome#index'
end
