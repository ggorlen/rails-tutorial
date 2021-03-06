Rails.application.routes.draw do
  get 'final_exam/finished_the_course'

  root   'static_pages#home'
  get    '/help',    to: 'static_pages#help'
  get    '/about',   to: 'static_pages#about'
  get    '/contact', to: 'static_pages#contact'
  get    '/signup',  to: 'users#new'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  resources :users do
    member do
      get :following, :followers
    end
  end
  resources :account_activations, only: [:edit]
  resources :password_resets,     only: [:new, :create, :edit, :update]
  resources :microposts,          only: [:create, :destroy]
  resources :relationships,       only: [:create, :destroy]
end

# Rails.application.routes.draw do

#   get 'password_resets/new'
#   get 'password_resets/edit'
#   get 'sessions/new'
  
#   root   'static_pages#home'
#   get    '/help',    to: 'static_pages#help'
#   get    '/about',   to: 'static_pages#about'
#   get    '/contact', to: 'static_pages#contact'
#   get    '/signup',  to: 'users#new'
#   get    '/login',   to: 'sessions#new'
#   post   '/login',   to: 'sessions#create'
#   delete '/logout',  to: 'sessions#destroy'
#   resources :users
#   resources :account_activations, only: [:edit]
#   resources :password_resets,     only: [:new, :create, :edit, :update]
#   resources :microposts,          only: [:create, :destroy]
# end

#  get 'users/new'
#  get 'ccsf_rails/index'
#  get 'ccsf_rails/assignments'
#  get 'ccsf_rails/links'
#  get 'ccsf_rails/about'
