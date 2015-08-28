Rails.application.routes.draw do

  get 'storeins/index'

  get 'admins/index'

  resources :admins
  resources :sessions
  resources :categories
  resources :storeups
  resources :storeins

  root "front_end#index"

  get "adminsetup" => "admins#index" , :as => "adminsetup"

  get "home" => "front_end#index" , :as => "home"
  get "about" => "front_end#about", :as => "about"

  get "adminroute" => "sessions#index" , :as => "adminroute"
  get "adminout" => "sessions#destroy" , :as => "adminout"

  get "addcategory" => "categories#index" , :as => "addcategory"
  get "allcategories" => "categories#show" , :as => "allcategories"

  get "storesignup" => "storeups#index" , :as => "storesignup"
  get "allstores" => "storeups#show" , :as => "allstores"
  get "approve" => "storeups#approve" , :as => "approve"
  get "allstoress" => "storeups#allinall" , :as => "allstoress"

  get "storelogin" => "storeins#index" , :as => "storelogin"
  get "storeout" => "storeins#destroy" , :as => "storeout"

  
end