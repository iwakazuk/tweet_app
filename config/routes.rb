Rails.application.routes.draw do

  devise_for :users,controllers: {
    registrations: 'users/registrations',
  }

  root "home#top"
  get "about" => "home#about"

  get "posts/new" => "posts#new"
  post "posts/create" => "posts#create"
  get "posts/index" => "posts#index"
  get "posts/:id/edit" => "posts#edit"
  get "posts/:id" => "posts#show"
  post "posts/:id/update" => "posts#update"
  post "posts/:id/destroy" => "posts#destroy"

  get "users/index" => "users#index"
  post "users/create" => "users#create"
  post "login" => "users#login"
  get "logout" => "users#logout"
  get "login" => "users#login_form"
  get "signup" => "users#new"
  get "users/:id" => "users#show"
  post "users/:id/update" => "users#update"
  get "users/:id/edit" => "users#edit"
  get "users/:id/likes" => "users#likes"

  get "likes/:post_id/create" => "likes#create"
  get "likes/:post_id/destroy" => "likes#destroy"
  ##resource :users do
    ##get login_form,login,logout,likes,ensure_correct_user
  ##end
  ##resource :posts
  ##resource :likes, only: [:create, :destroy]
  
end