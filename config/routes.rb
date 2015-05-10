Rails.application.routes.draw do
  devise_for :admins
  root 'welcome#index'

  resources :images, only: [:new, :create, :show]
  resources :image_parts, only: :index

  get "/admin" => redirect("/admins/image_parts"), as: :admin

  namespace :admins do
    resources :image_parts
  end
end
