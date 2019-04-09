Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'pages#home'
  get 'home', to: 'pages#home', as: 'home'

  # drink_recipe routes
  get 'all_ingredients', to: 'ingredient#index', as: 'all_ingredients'

  #drink_comments

  get 'drink_comments', to 'drink_comment#index', as: 'drink_comments'

  # user_profile routes
  get 'user_profiles', to: 'user_profile#index', as: 'profile'
  post 'user_profiles', to: 'user_profile#create'
  get 'user_profiles/new', to: 'user_profile#new', as: 'new_profile'

end
