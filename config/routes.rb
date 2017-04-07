Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations' }
  resources :memes
  root 'pages#home' 
  get 'pages/mymeme'
end
