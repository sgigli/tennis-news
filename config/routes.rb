Rails.application.routes.draw do
  resources :tournaments
  resources :players
  resources :articles
  resources :s3_uploads
  devise_for :users
  resources :search, only: [:index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "home_page#index"
end
