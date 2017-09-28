Rails.application.routes.draw do

  resources :cars do
    resources :reservations
  end
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
   root to:'cars#index'

end
