Rails.application.routes.draw do
 
  # get 'users/register'

  root 'todos#todo_app'

   match 'todos/todo_app', :to => 'todos#todo_app', :via => :get
   match 'todos/list', to: "todos#list", via: :get, as: :lists
   match 'todos/create', :to => 'todos#create', :via => :post
   get '/delete/:id' => 'todos#delete', as: :delete
   match 'todos/update/:id', to: 'todos#update', via:  :get
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
