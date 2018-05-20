Rails.application.routes.draw do
  resources :posts do
    resources :comments
  end
  
  root 'posts#index'
  post 'posts/comment_create/:post_id' => 'posts#comment_create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
