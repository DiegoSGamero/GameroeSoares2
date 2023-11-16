Rails.application.routes.draw do
  devise_for :admins, controllers: {
  registrations: 'admins/registrations'
  }

  devise_for :users, controllers: {
  registrations: 'users/registrations'
  }

  devise_scope :user do
    get 'users/sign_up', to: 'users/registrations#new'
  end

  devise_scope :admin do
    get 'admins/sign_up', to: 'admins/registrations#new'
  end

  root to: "pages#home"
  get 'pages/about_us'
  get '/produtos', to: "pages#products"
  get '/conhecimento', to: "pages#knowledge"
  get '/contato', to: "pages#contact"
  get '/trabalhos', to: "pages#works"
  get 'pages/signup'
  get 'admins/index'
  get 'admins/show'
  get 'admins/new'
  get 'admins/create'
  get 'admins/edit'
  get 'admins/update'
  get 'admins/destroy'
  get 'properties/index'
  get 'properties/show'
  get 'properties/new'
  get 'properties/create'
  get 'properties/edit'
  get 'properties/update'
  get 'properties/destroy'
  get 'users/index'
  get 'users/show'
  get 'users/new'
  get 'users/create'
  get 'users/edit'
  get 'users/update'
  get 'users/destroy'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
