Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/list/type/:type', to: 'list#type', as: 'list_by_type'
  get '/list/occasion/:occasion', to: 'list#occasion', as: 'list_by_occasion'

end
