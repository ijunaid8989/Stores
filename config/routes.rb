Rails.application.routes.draw do
  get 'front_end/index'

  get 'admins/index'

  resources :admins

  root "front_end#index"


  get "home" => "front_end#index" , :as => "home"
  get "about" => "front_end#about", :as => "about"
  
end