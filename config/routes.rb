# frozen_string_literal: true

Rails.application.routes.draw do
  # get 'users#home'
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root to: 'users#home'
  # root to: new_user_session_path
  # get '/users/signin', to: 'users#signin'
  # post '/validate', to: 'users#validate'
  get '/home', to: 'users#home'
  # get '/signup', to: 'users#signup'
  # post '/afterSignup', to: 'users#afterSignup'
  get '/comments/:blog_id', to: 'comments#show'
  post '/comments/new', to: 'comments#create'
  get '/comments/:comment_id/delete', to: 'comments#delete'
  get '/users/profile', to: 'users#profile'
  # get '/users/update', to: 'users#update'
  # post '/users/updatedInfo', to: 'users#updatedInfo'
  get '/blogs/:blog_id/delete', to: 'blogs#delete'
  get '/likes/:blog_id', to: 'likes#create'
  # get '/users/logout', to: 'users#logout'
  # get '/newBlog', to: "blogs#new_blog"
  resources 'users'
  resources 'blogs'
  resources 'users' do
    resources 'blogs' do
      resources 'comments'
    end
  end
  # Defines the root path route ("/")
  # root "articles#index"
end
