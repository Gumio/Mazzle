Rails.application.routes.draw do
  get 'message/index' => 'message#index'

  get 'detail/index' => 'detail#index'

  get 'search/index' => 'search#index'

  get 'profile/index' => 'profile#index'

  get '/' => 'home#top'



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
