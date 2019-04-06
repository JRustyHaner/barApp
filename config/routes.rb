Rails.application.routes.draw do
  root to: 'pages#home'
  get 'home', to: 'pages#home', as: 'home'
  get 'about', to: 'pages#about', as: 'about'
  get 'drink', to: 'drink#index', as: 'drink'
  get 'drink/new', to: 'drink#new', as: 'new_drink'
  post 'drink/create', to: 'drink#create'
  get 'drink/:id/edit', to: 'drink#edit', as: 'edit_drink'
end
