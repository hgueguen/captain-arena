Rails.application.routes.draw do
  resources :fights
  resources :characters
  root to: "pages#welcome"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
