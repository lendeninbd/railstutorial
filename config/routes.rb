Rails.application.routes.draw do
  get 'users/index'

  get 'users/show'

  devise_for :users, path_names: {sign_in: "login", sign_out: "logout"}
  resources :users, :only => [:index, :show]


  get 'posts/find_posts' => 'posts/find_posts'

  resources :posts
  get 'welcome_controller/index'

  root 'posts#index'

end
