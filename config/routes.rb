Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get 'lists', to: 'lists#index'
  get 'lists/new', to: 'lists#new'
  get 'lists/:id', to: 'lists#show', as: 'list'
  post 'lists', to: 'lists#create'

  get 'lists/:id/bookmarks/new', to: 'bookmarks#new', as: 'bookmark'
  post 'lists/:id/bookmarks', to: 'bookmarks#create', as: 'list_bookmarks'
  delete 'bookmarks/:id', to: 'bookmarks#destroy'
end
