Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do { format: :json }
      resources :ideas, only: [:index]
    end
  end
end
