R20130214Cookbook::Application.routes.draw do
  resources :ingredients

  resources :recipes do
    resources :quantities, only: [:new, :destroy, :create]
  end

  root to:  "recipes#index"
end
