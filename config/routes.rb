Rails.application.routes.draw do
  root 'welcome#index'

  resources :images, only: [:new, :create, :show]
  resources :image_parts, only: [ :index ]
end
