Rails.application.routes.draw do
  root to: 'pages#home'
  get 'home', to: 'pages#home', as: 'home'
  get 'about', to: 'pages#about', as: 'about'
 
  # Recipe routes
  get 'drinks', to: 'drinks#index', as: 'drinks'
  get 'drinks/new', to: 'drinks#new', as: 'new_drink'
  post 'drinks/create', to: 'drinks#create'
  get 'drinks/:id/edit', to: 'drinks#edit', as: 'edit_drink'
  get 'drinks/:id', to: 'drinks#show', as: 'drink'
  patch 'drinks/:id', to: 'drinks#update'
  put 'drinks/:id', to: 'drinks#update'
  delete 'drinks/:id', to: 'drinks#destroy'
  resource :drinks
 
  # Ingredient routes
   get 'all_ingredients', to: 'ingredient#index', as: 'all_ingredients'

  # user_profile routes
  get 'user_profiles', to: 'user_profile#index', as: 'profile'
  post 'user_profiles', to: 'user_profile#create'
  get 'user_profiles/new', to: 'user_profile#new', as: 'new_profile'

end
