Rails.application.routes.draw do
  resources :topics do
    resources :posts, except: [:index]
  end
  # We pass resources :posts to the resources :topics block. This nests the post routes under the topic routes.

  get 'about' => 'welcome#about'

  root 'welcome#index'
end
