AdventureStore::Application.routes.draw do
 root :to => 'adventures#index'
  devise_for :users
  resources :adventures do
  resources :reviews, only: [:new, :create]
  end

end
