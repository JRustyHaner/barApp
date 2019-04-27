Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'pages#home'
  get 'home', to: 'pages#home', as: 'home'
 
  # Recipe routes
  get 'recipes', to: 'recipes#index', as: 'recipes'
  get 'recipes/new', to: 'recipes#new', as: 'new_recipe'
  post 'recipes/create', to: 'recipes#create'
  get 'recipes/:recipe_id/ingredients/new', to: 'ingredients#new', as: 'new_ingredient'
  post 'ingredients/create', to: 'ingredients#create', as: 'ingredients'
  get 'recipes/:id/edit', to: 'recipes#edit', as: 'edit_recipe'
  get 'recipes/:id', to: 'recipes#show', as: 'recipe'
  patch 'recipes/:id', to: 'recipes#update'
  put 'recipes/:id', to: 'recipes#update'
  delete 'recipes/:id', to: 'recipes#destroy'
  resource :recipes
 
  # Ingredient routes
  # get 'all_ingredients', to: 'ingredients#index', as: 'all_ingredients'
  # get 'ingredients/new', to: 'ingredients#new', as: 'new_ingredient'
  # post 'ingredients/create', to: 'ingredients#create'
  get 'ingredients/:id/edit', to: 'ingredients#edit', as: 'edit_ingredient'
  patch 'ingredients/:id', to: 'ingredients#update', as: 'ingredient'
  put 'ingredients/:id', to: 'ingredients#update'
  delete 'ingredients/:id', to: 'ingredients#destroy'
  # get 'ingredients/:id', to: 'ingredients#show', as: 'ingredient'
  #resource :ingredients

  #drink_comments
  
  get 'drink_comments', to: 'drink_comment#index', as: 'drink_comments'
  get 'drink_comments/new', to: 'drink_comment#new', as: 'new_drink_comment'
  get 'drink_comments/:id', to: 'drink_comment#show', as: 'drink_comment'
  #get 'drink_comments/:recipe_id', to: 'recipes#show', as: 'comment_recipe'

  post 'drink_comments', to: 'drink_comment#create'
  get 'drink_comments/:id/edit', to: 'drink_comment#edit', as: 'edit_drink_comment'
  patch 'drink_comments/:id', to: 'drink_comment#update'
  delete 'drink_comments/:id', to: 'drink_comment#destroy'

  #get 'recipes/:id', to: 'recipes#show', as: 'recipe'
  


  # user_profile routes
  get 'user_profiles/:id/show', to: 'user_profile#show', as: 'show_profile'
  get 'user_profiles/login', to: 'user_profile#login', as: 'login'
  post 'user_profiles/login', to: 'user_profile#check_account'
  get 'user_profiles/logout', to: 'user_profile#logout', as: 'logout'
  get 'user_profiles/:id', to: 'user_profile#index', as: 'profile'
  get 'user_profiles', to: 'user_profile#new', as: 'new_profile'
  post 'user_profiles', to: 'user_profile#create'
  get 'user_profiles/:id/edit', to: 'user_profile#edit', as: 'edit_profile'
  patch 'user_profiles/:id/edit', to: 'user_profile#update'
  put 'user_profiles/:id/edit', to: 'user_profile#update'
  
  

  # list routes
  get '/list', to: 'list#index', as: 'list_index'
  post '/list', to: 'list#search'
  get '/list/country/:country', to: 'list#country', as: 'list_by_country'
  get '/list/ingredient/:ingredient', to: 'list#ingredient', as: 'list_by_ingredient'
  get '/list/type/:type', to: 'list#type', as: 'list_by_type'
  get '/list/occasion/:occasion', to: 'list#occasion', as: 'list_by_occasion'
  get '/list/top', to: 'list#top', as: 'list_top_ten'
  get '/list/new', to: 'list#new', as: 'list_new'
  get '/list/bar', to: 'list#bar', as: 'list_bar'

  # genPDFs routes
  get 'gen_pd_fs/:id/show', to: 'gen_pd_fs#show', as: 'show_gen_pd_fs'
  #resources :gen_pd_fs, only: [:show]

end
