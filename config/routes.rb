Rails.application.routes.draw do
  resources :movie
  get "top10/index"
  root "top10#index"

  get "ratings/" => "ratings#index"
  get "ratings/new"
  post "ratings/new" => "ratings#create"
  get "ratings/:id" => "ratings#show"

  mount Ratings::API => "/api/ratings"
  mount Movies::API => "/api/movies"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
