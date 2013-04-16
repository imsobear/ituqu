Youji::Application.routes.draw do

	resources :sessions, :only => [:create, :destroy]

	match '/auth/:provider/callback', to: 'sessions#create' 	

	resources :pictures, :only => [:index, :create, :destroy]
	
	resources :journals

	resources :users

	root to: "home#index"

	match "me" => "me#index"
end
