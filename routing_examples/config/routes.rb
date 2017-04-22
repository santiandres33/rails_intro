Rails.application.routes.draw do


  get 'profile', to: 'users#show'

  get 'profile', to: :show, controller: 'users', as: 'profile_path'

  #noraml resources
  resource :users
  # debido a un bug con los recursos singulares siempre toca poner la opcione url: cuando se usa el `form_for`

  # Namespaces
  # En este caso el controlador vive en `controllers/admin/ariticles_controler`
  # Todas las rutas estan detras de `admin`
  namespace :admin do
    resources :articles, :comments
  end

  # En este caso el controlador vive en `controllers/admin/ariticles_controler`
  # Las rutas no tiene admin
  scope module: 'admin' do
    resources :maps, :points
  end

  #Singular resource
  resource :geocoder

  # Nested resources
  # Tarea http://weblog.jamisbuck.org/2007/2/5/nesting-resources
  resources :owners do
    resources :dogs
  end

  # Shallow nesting
  resources :owners do
    resources :dogs, only: [:index, :new, :create]
  end
  #onwer_id
  resources :dogs, only: [:show, :edit, :update, :destroy]

  # Shallow nesting atajo
  resources :owners do
    resources :dogs, shallow: true
  end

  # Agregando mas cosas que solo las 7 rutas rest
  resources :photos do
    member do
      get 'preview'

    end
    # get 'preview', on: :member
    collection do
      get 'search'
    end

    # get 'search', on: :collection
  end


  # Verb constrain
  match 'photos', to: 'photos#show', via: [:get, :post]

  #Segment constrains
  get 'photos/:id', to: 'photos#show', constraints: lambda { |req|
    req.format == :json
  }
  get 'photos/:id', to: 'photos#show', constraints: { id: /[A-Z]\d{5}/ }


  #Redirection
  get '/stories', to: redirect('/articles')
  get '/stories/:name', to: redirect('/articles/%{name}')
  get '/stories/:name', to: redirect { |path_params, req|
    "/articles/#{path_params[:name].pluralize}"
  }

  get '/stories', to: redirect { |path_params, req| "/articles/#{req.subdomain}" }

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
