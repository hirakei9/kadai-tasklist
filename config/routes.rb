Rails.application.routes.draw do
  root to: 'tasks#index'
  resources :tasks
  
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  
  
  # edit: 更新用のフォームページ
  get 'tasks/:id/edit', to: 'tasks#edit'
  
  get "signup", to: "users#new"
  resources :users, only: [:index, :show, :new, :create]
  
  resources :tasks, only: [:create, :destroy, :edit, :show, :new , :index]
end