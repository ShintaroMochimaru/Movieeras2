Rails.application.routes.draw do
  get 'comments/create'
  devise_for :users, :controllers => {:registrations => 'users/registrations', :sessions => 'users/sessions' }
	root 'articles#index'
    resources :articles, only: [:index, :show, :edit, :new, :create, :update, :destroy] do
     resource :comments, only: [:create, :destroy]
 end
 resources :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
