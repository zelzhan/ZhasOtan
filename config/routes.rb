Rails.application.routes.draw do
  get 'home/about_us'
  get 'home/contact'
  get 'home/subscription'



  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  resources :posts
  resources :galleries
  resources :home
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
