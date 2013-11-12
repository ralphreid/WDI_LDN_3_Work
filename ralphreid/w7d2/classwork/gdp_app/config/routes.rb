GdpApp::Application.routes.draw do
  resources :gdps, only: [:index]
end
