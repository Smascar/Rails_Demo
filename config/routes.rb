Rails.application.routes.draw do
  get 'welcome/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :articles do
    resources :comments # Tells rails where to look for comments. Also, declare relationship.
  end
  
  root 'welcome#index'
end
