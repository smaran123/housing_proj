Rails.application.routes.draw do
  get 'contactus/new'
resources :contactus
get "list_property", to: "home#list_property"
get "about", to: "home#about"
get "privacy_policy", to: "home#privacy_policy"
 resources :home do
 	collection do
 		get :land
 		get :main_home
    get :land1

 	end
  member do
      get :gallery
      get :image_slide
      #get :map_options
    end
 end
 resources :properties
root "home#main_home"
end
