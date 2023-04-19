Rails.application.routes.draw do
  devise_for :users
  mount Ckeditor::Engine => '/ckeditor'
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  #
  namespace :api do
    namespace :v1 do
      resources :posts do
        resources :post_comments , only: [:create]
      end
      resources :games, only: [:index,:show]
      resources :post_categories, only: [:index,:show]
      get 'get_by_category/:category_slug', to: 'posts#get_by_category'
      get 'get_by_game/:game_slug', to: 'posts#get_by_game'
    end
  end

end
