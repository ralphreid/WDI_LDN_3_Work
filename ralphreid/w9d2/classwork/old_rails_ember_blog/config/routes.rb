RailsEmberBlog::Application.routes.draw do
  resources :posts


  root to: 'application#index'

  
end
