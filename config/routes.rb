Rails.application.routes.draw do
  root to: 'pages#home'
  get 'home', to: 'pages#home', as: 'home'
  get 'about', to: 'pages#about', as: 'about'
  get 'drinks', to: 'drink#index', as: 'drinks'
  get 'drink/new', to: 'drink#new', as: 'new_drink'
  post 'drinks/create', to: 'drink#create'
  get 'drink/:id/edit', to: 'drink#edit', as: 'edit_drink'
  get 'drink/:id', to: 'drink#show', as: 'drink'
  patch 'drink/:id', to: 'drink#update'
  put 'drink/:id', to: 'drink#update'
  resource :drinks
end
