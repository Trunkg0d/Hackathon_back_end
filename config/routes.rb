Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'users'
  
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :posts
      resources :areas
      resources :lands
      resources :trees
      resources :tree_types
      resources :users
      get "/area_trees/:id", to: "trees#area_trees"
    end
  end
end
