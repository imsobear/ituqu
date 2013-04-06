Youji::Application.routes.draw do	

	resources :pictures, :only => [:index, :create, :destroy]
	
	resources :journals , except: :index

	devise_for :users

	resources :users

	root to: "home#index"

	match "me" => "me#index"
end
