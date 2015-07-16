Rails.application.routes.draw do
  
  
  get 'about' => 'static_pages#about'
  get 'faq' => 'static_pages#faq'

  devise_for :users
 
  root 'posts#index'
  
  resources :posts, except: :show do
    resources :comments, only: [:index, :create]
    member do
    	post 'upvote'
    end
  end

  


end
