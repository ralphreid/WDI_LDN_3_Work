MyLibraryApp::Application.routes.draw do
  
  resources :libraries

  resources :books do
    resources :bookshelves
  end

  root to: 'books#index'

end
