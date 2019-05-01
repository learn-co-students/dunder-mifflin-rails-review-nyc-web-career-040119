Rails.application.routes.draw do
  # get 'employees/index'
  #
  # get 'employees/show'
  #
  # get 'employees/edit'
  #
  # get 'employees/update'
  #
  # get 'employees/new'
  #
  # get 'employees/create'
  #
  # get 'employees/destroy'
  #
  # get 'dogs/index'
  #
  # get 'dogs/show'

  resources :dogs
  resources :employees
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
