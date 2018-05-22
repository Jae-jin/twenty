Rails.application.routes.draw do
  
  
  resources :users
  resources :posts do
    resources :comments
  end
  
  get 'login' => 'sessions#new'
  post 'login' => 'posts#index'
  delete 'logout' => 'sessions#destroy'
  
  root "users#index"
  # root 'posts#index'
  post 'posts/comment_create/:post_id' => 'posts#comment_create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
