Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'users', controllers: {
    sessions: 'users/sessions'
  }
  
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :posts
      resources :areas
      resources :lands
      resources :trees
      resources :tree_types
      resources :users
      get "/area_trees/:id", to: "trees#area_trees"
      get "/land_trees/:id", to: "trees#land_trees"
      get "/area_lands/:id", to: "lands#area_lands"
    end
  end
end
  