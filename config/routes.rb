Rails.application.routes.draw do
  root 'articles#index'

  # get '/articles' => 'articles#index'
  # get '/articles/:id' => 'articles#show', as: 'show_article'
  # get '/article/new' => 'articles#new', as: 'new_article'
  # get '/articles/:id/edit' => 'articles#edit', as: 'edit_article'
  # post '/articles' => 'articles#create', as: 'create_article'
  # patch 'articles/:id' => 'articles#update'
  # put 'articles/:id' => 'articles#update'
  # get 'articles/destroy'
  resources :users
  resources :articles

end
 