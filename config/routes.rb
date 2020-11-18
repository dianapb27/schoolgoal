Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :courses do
    resources :appointments, only: [ :new, :create ]
  end

  resources :appointments, only: :destroy
  resources :users, only: :show
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
