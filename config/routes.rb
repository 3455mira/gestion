Rails.application.routes.draw do
  resources :syojis
  resources :syojis do
    member do
      get 'show_image'
    end
  end
  get 'menu/index'

  get 'logins/index'
  get 'logins/logoff'
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
  resources :users do
    member do
      get 'show_image'
    end
  end
  root 'menu#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

