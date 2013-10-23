R20130214Cookbook::Application.routes.draw do
  resources :ingredients
  resources :users, only: [:index, :new, :create]
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

  root to:  "recipes#index"

  get "/signup", to: "users#new",           as: "signup"
  get "/login", to: "sessions#new",         as: "login"
  delete "/logout", to: "sessions#destroy",   as: "logout"

  get "/users/admin", to: "users#admin",         as: "admin"

  # put "/recipes/:id/flag", to: "recipes#flag", as: :flag_recipe
  # put "/recipes/flagged", to: "recipes#flagged", as: :flaged_recipes


end
