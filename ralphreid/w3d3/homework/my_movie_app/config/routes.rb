MyMovieApp::Application.routes.draw do
  resources :movies
  resources :actors

  root to: "movies#index"
  
end
