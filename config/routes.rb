Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :controller => 'person', :action =>'list'
  get 'person/list'
  get 'person/new'
  post 'person/create'
  get 'person/show'
  get 'person/delete'
  get 'address/list'
  get 'address/new'
  post 'address/create'
  get 'address/show'
  get 'address/delete'
end
