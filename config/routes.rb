Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations' }
  resources :memes do
    resources :comments
  end
  
  
  
  root 'pages#home' 
  get 'pages/mymeme'
  get 'pages/random'
  end
