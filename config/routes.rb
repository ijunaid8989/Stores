Rails.application.routes.draw do

  get 'products/index'

  get 'storeins/index'

  get 'admins/index'

  resources :admins
  resources :sessions
  resources :categories
  resources :storeups
  resources :storeins
  resources :products

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

  get "addproduct" => "products#index" , :as => "addproduct"
  get "allproducts" => "products#show" , :as => "allproducts"
  
  get "categroycall" => "front_end#categroycall" , :as => "categroycall"
  get "fullpro" => "front_end#fullpro" , :as => "fullpro"
end