Rails.application.routes.draw do

  root to: "home#index"

 devise_for :users

#  get 'home/contacts'
  get 'home/index'

  get 'terms' => 'pages#terms'
  get 'about' => 'pages#about'

  resources :articles do
  	resources :comments,  only: [:new, :create]
  end
  
  resource :contacts, only: [:new, :create], path_names: { :new => ''}
  #get 'contacts' => 'contacts#new'







  #resource :terms  #we use another one controller pages and stati page see upper get 'terms' ... etc
  #resource :about


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
