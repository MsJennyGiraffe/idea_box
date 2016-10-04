Rails.application.routes.draw do
  root 'home#index'

  namespace :api do
    namespace :v1, defaults: { format: :json } do
      resources :ideas, only: [:index, :create, :update, :destroy]
    end
  end
end
