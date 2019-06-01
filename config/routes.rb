Rails.application.routes.draw do
  resources :jobs, only: [:show, :create, :index]
end
