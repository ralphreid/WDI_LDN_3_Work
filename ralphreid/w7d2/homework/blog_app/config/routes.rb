BlogApp::Application.routes.draw do
  # devise_for :users
  devise_for :users, :path_names => {:sign_in => 'login', :sign_out => 'logout'}, :controllers => {:registrations => 'users', :omniauth_callbacks => 'omniauth_callbacks'}

  devise_scope :user do
    # get '/users' => 'users#index'
    resources :users, :only => [:index]
  end
  
  resources :posts do
    resources :comments, :only => [:create]
  end
  root :to => "posts#index"
end
