Rails.application.routes.draw do
  resources :articles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # root 'pages#hom'
  get '/', to: "pages#home"

  get '/songs', to: 'songs#index'
  post '/songs', to: 'songs#create'
  get '/songs/new', to: 'songs#new', as: 'new_song'
  get 'songs/:id', to: 'songs#show', as: 'show_song'

end
