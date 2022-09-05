Rails.application.routes.draw do
  resources :high_scores
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :samples
      resources :books
    end
  end
  # Defines the root path route ("/")
  # root "articles#index"
end
