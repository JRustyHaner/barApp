Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'pages#home'
  get 'home', to: 'pages#home', as: 'home'
 
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

  #drink_comments
  
  get 'drink_comments', to: 'drink_comment#index', as: 'drink_comments'
  get 'drink_comments/new', to: 'drink_comment#new', as: 'new_drink_comment'
  get 'drink_comments/:id', to: 'drink_comment#show', as: 'drink_comment' 
  post 'drink_comments', to: 'drink_comment#create'
  get 'drink_comments/:id/edit', to: 'drink_comment#edit', as: 'edit_drink_comment'
  patch 'drink_comments/:id', to: 'drink_comment#update'
  delete 'drink_comments/:id', to: 'drink_comment#destroy'
  


  # user_profile routes
  get 'user_profiles/:id/show', to: 'user_profile#show', as: 'show_profile'
  get 'user_profiles/login', to: 'user_profile#login', as: 'login'
  post 'user_profiles/login', to: 'user_profile#check_account'
  get 'user_profiles/logout', to: 'user_profile#logout', as: 'logout'
  get 'user_profiles/:id', to: 'user_profile#index', as: 'profile'
  post 'user_profiles', to: 'user_profile#create'
  get 'user_profiles', to: 'user_profile#new', as: 'new_profile'

  # list routes
  get '/list', to: 'list#index', as: 'list_index'
  get '/list/country/:country', to: 'list#country', as: 'list_by_country'
  get '/list/ingredient/:ingredient', to: 'list#ingredient', as: 'list_by_ingredient'
  get '/list/type/:type', to: 'list#type', as: 'list_by_type'
  get '/list/occasion/:occasion', to: 'list#occasion', as: 'list_by_occasion'
  get '/list/top', to: 'list#top', as: 'list_top_ten'
  get '/list/new', to: 'list#new', as: 'list_new'

end
