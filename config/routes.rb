Rails.application.routes.draw do
  get '/' => 'home#top'

  get 'profiles/new'
  post 'profiles/create'
  get 'profiles/show'
  get 'search/show'
  get 'search/result'
  post 'search/result'  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
