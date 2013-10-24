R20130214Cookbook::Application.routes.draw do

  resources :ingredients
  resources :users, only: [:index, :new, :create]
  resources :sessions, only: [:new, :create, :destroy]
  # get    '/recipes',          to: 'recipes#index',  as: :recipes
  # post   '/recipes',          to: 'recipes#create'
  # get    '/recipes/new',      to: 'recipes#new',    as: :new_recipe
  # get    '/recipes/:id/edit', to: 'recipes#edit',   as: :edit_recipe
  # get    '/recipes/:id',      to: 'recipes#show',   as: :recipe
  # put    '/recipes/:id',      to: 'recipes#update'
  # delete '/recipes/:id',      to: 'recipes#destroy'

  # post   '/recipes/:recipe_id/quantities',     to: 'quantities#create', as: :recipe_quantities
  # get    '/recipes/:recipe_id/quantities/new', to: 'quantities#new',    as: :new_recipe_quantity
  # delete '/recipes/:recipe_id/quantities/:id', to: 'quantities#destroy' as: :recipe_quantity

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

  get "/signup", to: "users#new",         as: "signup"
  get "/login",  to: "sessions#new" ,     as: "login"
  delete "/logout", to: "sessions#destroy",  as: "logout"

end
