R20130214Cookbook::Application.routes.draw do

  resources :ingredients

  resources :users, except: [:destroy] do
    collection do
      get :list_admin
    end
  end

  resources :sessions, only: [:new, :create, :destroy]

  resources :recipes do
    member do
      put :flag
    end
    collection do
      get :flagged
    end
    resources :quantities, only: [:new, :destroy, :create]
  end

  # root to:  "recipes#index"
  root to: "high_voltage/pages#show", id: "about"

  get "/pages/*id" => "pages#show", as: :page, format: :false

  get "/signup", to: "users#new",         as: "signup"
  get "/login",  to: "sessions#new" ,     as: "login"
  delete "/logout", to: "sessions#destroy",  as: "logout"

end
