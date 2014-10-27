Rails.application.routes.draw do
  root 'main#index'
  resource :photo
end
