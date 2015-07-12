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

 	end
 end
 resources :properties
root "home#main_home"
end
