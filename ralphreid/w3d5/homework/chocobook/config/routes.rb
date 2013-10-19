Chocobook::Application.routes.draw do
  
  root :to => "recipebook#index"
  resources :recipebook

end
