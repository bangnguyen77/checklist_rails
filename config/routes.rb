Rails.application.routes.draw do
  devise_for :users
  resources :items do
    member do
      patch :complete #related to method defined in items_controller
    end
  end
  root 'items#index'
end
