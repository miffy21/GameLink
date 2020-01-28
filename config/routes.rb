Rails.application.routes.draw do

  get 'contents/index'
  get 'contents/show'
  get 'contents/about'
  devise_for :users
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

  root 'contents#index'
  get 'contents/about'

  # userトップでのジャンル指定用
  get 'contents/genre/:id' => 'contents#index', as: 'contents_genre'

  resources :users do
    member do
      get :following, :followers
    end
  end

  resources :contents
  resources :reviews, only: [:index, :show]
  resources :news, only: [:index, :show]
  resources :walkthroughs, only: [:index, :show, :show_chapter]

  resources :favorites, only: [:create, :destroy]
  resources :comments, only: [:create, :destroy]
  resources :relationships, only: [:create, :destroy]
end
