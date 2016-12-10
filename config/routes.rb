Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	root to: 'animals#index'
	resources :animals, only: [:index, :show] do
		resources :fosters, only: [:new, :create]
	end
end
