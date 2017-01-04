Rails.application.routes.draw do

  devise_for :admins
  resources :posts

  resources :charges

  root to: 'posts#new'
  
end
