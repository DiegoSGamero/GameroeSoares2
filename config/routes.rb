Rails.application.routes.draw do
  devise_for :admins
  devise_for :users

  root to: "pages#home"
  get '/produtos', to: "pages#products", as: 'products'
  get '/conhecimento', to: "pages#knowledge", as: 'knowledge'
  get '/contato', to: "pages#contact", as: 'contact'
  get '/trabalhos', to: "pages#works", as: 'works'
  get '/perfil', to: "users#profile", as: 'profile'
  get '/clientes', to: "users#index", as: 'users_index'
  get '/propriedades', to: "properties#index", as: 'properties_index'

  resources :properties do
    collection do
      get 'search_property', to: 'properties#index'
    end
  end

  resources :users do
    collection do
      get 'search', to: 'users#index'
    end
  end

  get '/orcamento', to: 'user_mailer#new'
  post '/orcamento/enviar_email', to: 'user_mailer#contact_email'
end
