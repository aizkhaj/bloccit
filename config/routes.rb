Rails.application.routes.draw do
  resources :topics do
    resources :posts, except: [:index]
  end
  # We pass resources :posts to the resources :topics block. This nests the post routes under the topic routes.

  resources :users, only: [:new, :create]

  resources :sessions, only: [:new, :create, :destroy]

  resources :posts, only: [] do
    resources :comments, only: [:create, :destroy]
  end

  get 'about' => 'welcome#about'

  root 'welcome#index'
end
