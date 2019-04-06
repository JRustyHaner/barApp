Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

    get '/list', to: 'list#index', as: 'list_index'
    get '/list/country/:country', to: 'list#country', as: 'list_by_country'
    get '/list/ingredient/:ingredient', to: 'list#ingredient', as: 'list_by_ingredient'
end
