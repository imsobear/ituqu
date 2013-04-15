Youji::Application.routes.draw do

	match '/auth/:provider/callback', to: 'sessions#create'	

	resources :pictures, :only => [:index, :create, :destroy]
	
	resources :journals , except: :index

	resources :users

	root to: "home#index"

	match "me" => "me#index"
end
