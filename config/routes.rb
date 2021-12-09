Rails.application.routes.draw do
  devise_for :users

  get 'tops/index'
  root to: "tops#index"
  resources :batters
  resources :pitchers
  resources :teams do
    resource :favorites, only: [:create, :destroy]
  end
end
