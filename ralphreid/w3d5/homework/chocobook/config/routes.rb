Chocobook::Application.routes.draw do
  
  root :to => "recipes#index"
  resources :recipes
  resources :ingredients
  resources :amounts

end
