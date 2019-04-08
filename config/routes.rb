Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'pages#home'
  get 'home', to: 'pages#home', as: 'home'

  # drink_recipe routes
  get 'all_ingredients', to: 'ingredient#index', as: 'all_ingredients'

  # user_profile routes
  get 'user_profiles/:id/show', to: 'user_profile#show', as: 'show_profile'
  get 'user_profiles/login', to: 'user_profile#login', as: 'login'
  post 'user_profiles/login', to: 'user_profile#check_account'
  get 'user_profiles/logout', to: 'user_profile#logout', as: 'logout'
  get 'user_profiles/:id', to: 'user_profile#index', as: 'profile'
  post 'user_profiles', to: 'user_profile#create'
  get 'user_profiles', to: 'user_profile#new', as: 'new_profile'

end
