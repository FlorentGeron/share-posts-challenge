Rails.application.routes.draw do
  get 'comments/show'
  get 'comments/new'
  get 'comments/create'
  get 'posts/index'
  get 'posts/show'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :posts, only: %i[index show] do
    resources :comments, only: %i[new create]
  end
end
