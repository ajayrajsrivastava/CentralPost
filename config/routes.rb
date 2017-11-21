Rails.application.routes.draw do
  devise_for :users
  
  resources :posts do
  	resources :comments
  end
  
  root "posts#index"

  resources :chatrooms, param: :slug
  resources :messages
  
  # Serve websocket cable requests in-process
  mount ActionCable.server => '/cable'
  	
end
