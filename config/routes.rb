Rails.application.routes.draw do
  resources :events

  get 'test', to: "heartrates#test"

  resources :heartrates
 
  resources :patients
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
