Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # we don't need all the routes, but some of them!
  resources :restaurants, only: %i[index new create show] do # %i for array of symbols: [:new, :create]
    resources :reviews, only: %i[new create show]
  end
end
