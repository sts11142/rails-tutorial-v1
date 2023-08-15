Rails.application.routes.draw do
  root   'static_pages#home'
  get    '/help',    to: 'static_pages#help'
  get    '/about',   to: 'static_pages#about'
  get    '/contact', to: 'static_pages#contact'
  get    '/signup',  to: 'users#new'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  resources :users  # 操作を行う対象となるものを設置（テーブルとか？）
  resources :account_activations, only: [:edit]
  resources :password_resets,     onlu: [:new, :create, :update]
  resources :microposts,          only: [:create, :destroy]
  get '/microposts', to: 'static_pages#home'
end
