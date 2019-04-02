Rails.application.routes.draw do
  get 'pages/home'
  root to: 'pages#home'
  get 'home', to: 'pages#home', as: 'home'
  get 'about', to: 'pages#about', as: 'about'
  get 'ingredients', to: 'pages#ingredients#index', as: 'ingredients'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
