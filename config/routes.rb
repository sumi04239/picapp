Rails.application.routes.draw do
  devise_for :users
  root 'pics#index'

  resources :albums do
    collection do
      get 'search'
    end
  end
  resources :pics
  resources :advises do
    resources :answers
  end
  resources :users

  post 'like/:id' => 'likes#create', as: 'create_like'
  
  delete 'like/:id' => 'likes#destroy', as: 'destroy_like'

  get 'rakuten_search' => 'goods#search'
end
