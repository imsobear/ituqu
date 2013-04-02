Youji::Application.routes.draw do
	
	resources :pictures, :only => [:create, :destroy]
	
	resources :journals 

	devise_for :users

	resources :users

	root to: "home#index"
end
