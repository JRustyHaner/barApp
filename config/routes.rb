Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/list/top', to: 'list#top', as: 'list_top_ten'
  get '/list/new', to: 'list#new', as: 'list_new'
end
