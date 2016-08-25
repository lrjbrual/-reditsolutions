Rails.application.routes.draw do
  get 'contacts/new'

  get 'contacts/create'

  root to: 'pages#home'
	resources :contacts, only: [:new, :create]
end
