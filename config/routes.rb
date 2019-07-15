Rails.application.routes.draw do
  root to: 'homepage#index'
  devise_for :users
  get 'main', to: 'main#index', as: 'main_index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
