Rails.application.routes.draw do
  devise_for :users,controllers: {
    registrations: 'users/registrations',
  }
  root "home#top"
  get "about" => "home#about"

  resource :users
  resource :posts
  resource :likes, only: [:create, :destroy]
  
end
