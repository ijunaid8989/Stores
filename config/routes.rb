Rails.application.routes.draw do
  get 'categories/index'

  get 'sessions/index'

  get 'front_end/index'

  get 'admins/index'

  resources :admins
  resources :sessions
  resources :categories

  root "front_end#index"


  get "home" => "front_end#index" , :as => "home"
  get "about" => "front_end#about", :as => "about"
  get "adminroute" => "sessions#index" , :as => "adminroute"
  get "adminout" => "sessions#destroy" , :as => "adminout"

  get "addcategory" => "categories#index" , :as => "addcategory"
  
end