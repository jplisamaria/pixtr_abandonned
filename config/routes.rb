Pixtr::Application.routes.draw do
  ## this route maps a url to a controller and an action
  ## controller#action
  ## actions are methods
  ## index is a method
  ## if you have a route that goes to a method, that method is an action
  ## all actions are methods, but not all methods are actions.  
  
  get "/galleries/random" => "random_galleries#show"


  root "galleries#index"
  resources :galleries do
    resources :images, shallow: true
  end
## or
## get "galleries/new" => "galleries#new"
## get "/galleries/:id" => "galleries#show", 
## as: :gallery
## post "/galleries" => "galleries#create" ## so that it persists to the database
## get "/galleries/:id/edit" => "galleries#edit"
## patch "/galleries/:id" => "galleries#update" ##this one persists to the database
## delete "/galleries/:id" => "galleries#destroy"
end
