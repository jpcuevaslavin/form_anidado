Rails.application.routes.draw do
  resources :posts
  resources :comments, only: %i[create destroy]

  root 'posts#index'
end
