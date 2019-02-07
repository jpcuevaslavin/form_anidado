Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  resources :posts do
    get 'my_posts', on: :collection
  end

  resources :comments, only: %i[create destroy]


  root 'posts#index'
end
