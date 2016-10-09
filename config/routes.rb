Rails.application.routes.draw do
  get 'static_pages/feedProjects'

  get 'static_pages/portfolio'

  get 'sessions/new'

  resources :interestlists
  resources :projects
  resources :users
  
  get '/login', to:'sessions#new'
  post '/login', to:'sessions#create'
  get '/logout', to: 'sessions#destroy'
  delete '/logout', to: 'sessions#destroy'
  
  root 'static_pages#feedProjects'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
