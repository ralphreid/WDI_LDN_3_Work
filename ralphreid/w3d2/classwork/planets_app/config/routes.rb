# PlanetsApp::Application.routes.draw do

#   get '/plantes' => 'planets#index'  
#   get '/planets/:id/edit' => 'planets#edit', :as => 'planet_edit' #planet_edit_url, planet_edit_path methods are created by the helper
#   # so i could call planet_edt_path(@planet) would return a string
#   post '/planets/:id' => 'planets#update' #helper not needed because only the form uses this link
#   get '/planets/new' => 'planets#new', :as => 'new_planet'


#   # You can have the root of your site routed with "root"
#   # just remember to delete public/index.html.
#   root :to => 'planets#index'


PlanetsApp::Application.routes.draw do
 
  get    '/planets',          to: 'planets#index',  as: :planets
  post   '/planets',          to: 'planets#create'
  get    '/planets/new',      to: 'planets#new',    as: :new_planet
  get    '/planets/:id/edit', to: 'planets#edit',   as: :edit_planet
  get    '/planets/:id',      to: 'planets#show',   as: :planet
  put    '/planets/:id',      to: 'planets#update'
  delete '/planets/:id',      to: 'planets#destroy'
 
  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
 
  root :to => 'planets#index'
 

end
