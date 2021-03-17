Rails.application.routes.draw do
  root 'articles#index'

  get 'articles/index' => 'articles#index'
  get 'articles/new'
  get 'articles/edit'
  get 'articles/create'
  get 'articles/update'
  get 'articles/destroy'
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
