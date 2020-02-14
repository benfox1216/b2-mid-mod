Rails.application.routes.draw do
  get '/', to: 'welcome#index'
  
  #Studios
  get '/studios', to: 'studios#index'
  
  #Movies
  get '/movies/:movie_id', to: 'movies#show'
  
  #Actors
  get '/actors/:actor_id', to: 'actors#show'
end
