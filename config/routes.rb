Rails.application.routes.draw do
  get 'sessions/index'

  get 'front_end/index'

  get 'admins/index'

  resources :admins
  resources :sessions

  root "front_end#index"


  get "home" => "front_end#index" , :as => "home"
  get "about" => "front_end#about", :as => "about"
  get "adminroute" => "sessions#index" , :as => "adminroute"
  get "adminout" => "sessions#destroy" , :as => "adminout"
  
end