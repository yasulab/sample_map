Rails.application.routes.draw do
  resources :spots
  root "hello#index"
end
