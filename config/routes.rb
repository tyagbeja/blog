Blog::Application.routes.draw do
  resources :members

  resources :posts

    get "home/index"

    root :to => "home#index"

  resources :posts do
    resources :comments
  end
  resources :members do
    resources :posts
  end
end
