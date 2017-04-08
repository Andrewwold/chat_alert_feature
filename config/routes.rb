Rails.application.routes.draw do
  namespace :admin do
    resources :users
resources :conversations
resources :messages
resources :admin_users
resources :ta_users

    root to: "users#index"
  end

  get 'welcome/landing'

  get 'welcome/index'

  get 'welcome/about'

  root 'welcome#landing'

  get 'chat' => 'conversations#show'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :conversations do
    resources :messages
  end
end
