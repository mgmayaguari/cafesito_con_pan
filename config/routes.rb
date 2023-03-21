Rails.application.routes.draw do
  root 'chatroom#index'

  get 'home', to: 'chatroom#home'

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  post 'message', to: 'messages#create'

  resources :users, except: [:new]
  get 'signup', to: 'users#new'

  mount ActionCable.server, at: '/cable'
end
