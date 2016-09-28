Rails.application.routes.draw do
  root to: 'pages#home'
  resources :post
	resources :forms, only: [:new, :create]
end
