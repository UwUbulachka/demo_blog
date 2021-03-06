Rails.application.routes.draw do
 
  devise_for :users
  root to: "home#index"

  get 'home/index'

  resource :contacts, only: [:new,:create], path_names: { :new => '' }

  resources :articles do
    resources :comments 
  end
end
