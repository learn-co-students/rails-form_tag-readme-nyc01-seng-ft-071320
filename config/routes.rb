Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :posts, only: [:index]
  resources:posts, only: [:new, :create]

  get '/posts/:id', to: 'posts#show', as: 'post'

  # get '/posts/new', to: 'posts#new', as: 'new_post'
end
