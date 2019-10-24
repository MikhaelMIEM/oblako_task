# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

Rails.application.routes.draw do
  get 'task/index'
  get 'task/update'
  get 'task/create'
  root 'task#index'
  resources :task
  post "task/create" => "task#create"
  
end
