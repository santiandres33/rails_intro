Rails.application.routes.draw do
  # resources :articles
  # # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # root 'pages#hom'
  # get '/', to: "pages#home"

  # Este es el crud de songs
  # get '/songs', to: 'songs#index'
  # post '/songs', to: 'songs#create'
  # patch '/songs/:id', to: 'songs#update'
  # delete '/songs/:id', to: 'songs#destroy'
  # get '/songs/new', to: 'songs#new', as: 'new_song'
  # get '/songs/:id/edit', to: 'songs#edit', as: 'edit_song'
  # get 'songs/:id', to: 'songs#show', as: 'show_song'
  # show_song_url  songs/:id

  resources :artists do
    resources :songs
  end




end
