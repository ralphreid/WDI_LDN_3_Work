MoonsApp::Application.routes.draw do
  
root :to => 'moons#index'

get    '/moons',          to: 'moons#index',  as: :moons

end
