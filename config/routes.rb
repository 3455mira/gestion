Rails.application.routes.draw do
  get 'logins/index'
  #resources :logins
  post 'logins/auth'
  resources :sche_ts
  resources :icons
  resources :icons do
    member do
      get'show_image'
    end 
  end
  resources :sches
  resources :users
  root 'sches#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

