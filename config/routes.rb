Rails.application.routes.draw do
  devise_for :users
  root to: "menus#index"
  resources :menus, only:[:index, :new, :create]
  resources :dinners, only:[:index, :new, :create, :show]
end
