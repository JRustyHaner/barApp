Rails.application.routes.draw do
  root to: 'pages#home'
  get 'home', to: 'pages#home', as: 'home'
  get 'about', to: 'pages#about', as: 'about'
 
  # Recipe routes
  get 'recipes', to: 'recipes#index', as: 'recipes'
  get 'recipes/new', to: 'recipes#new', as: 'new_recipe'
  post 'recipes/create', to: 'recipes#create'
  get 'recipes/:id/edit', to: 'recipes#edit', as: 'edit_recipe'
  get 'recipes/:id', to: 'recipes#show', as: 'recipe'
  patch 'recipes/:id', to: 'recipes#update'
  put 'recipes/:id', to: 'recipes#update'
  delete 'recipes/:id', to: 'recipes#destroy'
  resource :recipes
 
  # Ingredient routes
   get 'all_ingredients', to: 'ingredients#index', as: 'all_ingredients'

  # user_profile routes
  get 'user_profiles', to: 'user_profile#index', as: 'profile'
  post 'user_profiles', to: 'user_profile#create'
  get 'user_profiles/new', to: 'user_profile#new', as: 'new_profile'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

    get '/list', to: 'list#index', as: 'list_index'
    get '/list/country/:country', to: 'list#country', as: 'list_by_country'
    get '/list/ingredient/:ingredient', to: 'list#ingredient', as: 'list_by_ingredient'
end
