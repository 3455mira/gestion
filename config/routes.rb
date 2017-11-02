Rails.application.routes.draw do

  post 'login/auth'
  resources :sche_ts
  resources :icons
  resources :icons do
    member do
      get'show_image'
    end 
  end
  resources :sches
  root 'calender#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

