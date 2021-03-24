Rails.application.routes.draw do
  root to: "menus#index"
  resources :menus, only:[:index, :new, :create]
  resources :dinners, only:[:index, :new, :create]
end
