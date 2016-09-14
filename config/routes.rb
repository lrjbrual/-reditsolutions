Rails.application.routes.draw do
  root to: 'pages#home'
  resources :posts
	resources :contacts, only: [:new, :create]
end
