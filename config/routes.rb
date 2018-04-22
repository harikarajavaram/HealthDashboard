Rails.application.routes.draw do
  resources :events

  get 'test', to: "heartrates#test"

  resources :heartrates
 
  resources :patients do 
  	member do
  		get 'patientHR'
  		get 'patientHR/:date', to: "patients#patientHRDate"
  		get 'event'
  		get 'event/:date', to: "patients#eventDate"
  	end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
