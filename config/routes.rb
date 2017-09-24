Rails.application.routes.draw do
  get 'profiles/new'
  post 'profiles/create'
  get 'profiles/show'

  resources :details

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
