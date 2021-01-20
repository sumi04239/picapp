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
  resources :user

end
