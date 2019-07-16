Rails.application.routes.draw do
  root to: 'homepage#index'
  devise_for :users
  get 'main', to: 'main#index', as: 'main_index'
  resources :guides
  resources :bookings
  get 'guides/:guide_id/bookings/new', to: 'bookings#new', as: 'new_guide_booking'
  delete 'bookings/:id', to: 'bookings#destroy', as: 'delete_booking'
  get '/reviews/new', to: 'reviews#new', as: 'new_review'
  post '/reviews/', to: 'reviews#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
