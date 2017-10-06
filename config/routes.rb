Rails.application.routes.draw do

  resources :cars do
    resources :reservations
  end
  devise_for :users
  resources :users, :only => [:index, :show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/car_find_display'=> 'cars#display'
  post '/car_find_display' => 'cars#display'
  get 'all_user' => 'users#display', :as => :users_path
  root to:'cars#index'

   get 'cars/:car_id/reservations/show' => 'reservations#show', :as => :reservations_path
end
