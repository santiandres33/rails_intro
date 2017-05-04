Rails.application.routes.draw do
  get '/', to: 'welcome#index', as: 'welcome_index'
  resources :articles

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
