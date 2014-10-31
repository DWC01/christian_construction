Rails.application.routes.draw do
  root 'main#index'
  resources :users, :photos, :sessions
  get '/admin',        to: 'sessions#new'
  get '/about',        to: 'main#about'
  get '/testimonials', to: 'main#testimonials'
end
