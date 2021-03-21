Rails.application.routes.draw do
  root 'pages#home'

  get '/about' => 'pages#about'
  get '/home' => 'pages#home'

  resources :users
  resources :articles

end
 