Rails.application.routes.draw do
  devise_for :users
  resources :memes
  root 'pages#home' 
end
