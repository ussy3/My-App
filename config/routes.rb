Rails.application.routes.draw do
  root 'app_names#index'
  resources :app_names
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
