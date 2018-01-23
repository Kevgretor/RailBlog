Rails.application.routes.draw do
  get 'welcome/index'
  root 'welcome#index'

  resources :articles do
    resources :comments
  end

  get 'login', to: 'user_authenticator#login'
  get 'logout', to: 'user_authenticator#logout'
  post 'authenticate', to: 'user_authenticator#authenticate'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
