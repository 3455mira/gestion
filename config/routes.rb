Rails.application.routes.draw do
  resources :users
  resources :sche_ts
  resources :icons
  resources :icons do
    member do
      get'show_image'
    end 
  end
  resources :sches
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

