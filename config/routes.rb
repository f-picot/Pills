Rails.application.routes.draw do
  get 'dashboards/show'

  resources :pills, only: [:index] do
    resources :cart_items, only: [:create, :update]
  end
  resources :carts, only: [:show, :new, :create]
  resources :payments, only: [:new, :create]

  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
