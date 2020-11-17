Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :courses do
    resources :sessions, except: [ :destroy, :index ]
  end

  resources :sessions, only: :destroy
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
