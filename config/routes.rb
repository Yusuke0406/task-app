Rails.application.routes.draw do
  devise_for :users
  root to: "task#index"
  resources :users, only:[:update,:edit]
  resources :categories, only:[:index, :new, :create]
  # devise_scope :user do
  #   get 'login', to: 'devise/sessions#new'
  #   post 'login', to: 'devise/sessions#create'
  #   delete 'signout', to: 'devise/sessions#destroy'
  # end
end
