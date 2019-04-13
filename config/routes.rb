Rails.application.routes.draw do
  devise_for :users, :controllers => {:registrations => "registrations"}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#index'
  devise_scope :user do
    get 'login', to: 'devise/session#new'
    get 'signup', to: 'devise/registrations#new'
  end
end
