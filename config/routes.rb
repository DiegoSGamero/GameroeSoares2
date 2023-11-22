Rails.application.routes.draw do
  devise_for :admins
  devise_for :users

  root to: "pages#home"
  get '/produtos', to: "pages#products", as: 'products'
  get '/conhecimento', to: "pages#knowledge", as: 'knowledge'
  get '/contato', to: "pages#contact", as: 'contact'
  get '/trabalhos', to: "pages#works", as: 'works'
  get '/perfil', to: "users#profile", as: 'profile'

  resources :properties

end
