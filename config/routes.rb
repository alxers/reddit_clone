Rails.application.routes.draw do
  devise_for :users
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'reddits#index'

  resources :users do
    resources :comments
    resources :posts
  end

  resources :personal_messages, only: [:new, :create] do
    collection do
      get :inbox
      get :sent
    end
  end

  resources :reddits do
    member do
      post :vote
    end
    resources :posts
  end

  resources :posts do
    member do
      post :vote
    end
    resources :comments
  end

  resources :comments do
    member do
      post :vote
    end
  end

  resources :friends
end
