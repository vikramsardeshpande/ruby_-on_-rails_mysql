Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'project#list'
  #  get 'project/list'
  get '/new', to: 'project#new',   as: 'new_project' 
  post '/create', to: 'project#create', as: 'create_project'
  patch '/update', to: 'project#update', as: 'update_project'
  get '/list', to: 'project#list', as: 'list_project'
  get '/show', to: 'project#show', as: 'show_project'
  get '/edit', to: 'project#edit', as: 'edit_project'
  get '/delete', to: 'project#delete', as: 'delete_project'
  #   get 'project/update'
  get '/show_teamleads', to: 'project#show_teamleads', as: 'show_teamleads_project'
end
