Rails.application.routes.draw do
  get 'posts/find_posts' => 'posts/find_posts'

  resources :posts
  get 'welcome_controller/index'

end
