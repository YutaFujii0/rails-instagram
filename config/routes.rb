Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'registrations' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'posts#index'
  resources :users, only: [:show]
  resources :posts, only: [:index, :new, :create] do
    resources :photos, only: [:create]
  end
end
