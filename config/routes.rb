Rails.application.routes.draw do

  root 'application#index'

  namespace :api do
    namespace :v1 do
      resources :courses
      resources :reviews
    end
  end

  get '*path', to: 'application#index'

end
