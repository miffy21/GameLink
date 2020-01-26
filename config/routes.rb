Rails.application.routes.draw do
  get 'relationships/create'
  get 'relationships/destroy'
  get 'favorites/create'
  get 'favorites/destroy'
  get 'comments/create'
  get 'comments/destroy'
  get 'reviews/index'
  get 'reviews/show'
  get 'walkthroughs/index'
  get 'walkthroughs/show'
  get 'walkthroughs/show_chapter'
  get 'news/index'
  get 'news/show'
  get 'contents/index'
  get 'contents/about'
  devise_for :users
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
