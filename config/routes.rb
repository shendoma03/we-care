Rails.application.routes.draw do
  get 'welcome/index'
  get 'welcome/login' => 'sessions#new'
  get 'welcome/signup' => 'users#new'
  get 'AdminLogin' => 'welcome#index'

  get 'assessments/new'
  get 'assessments/quiz'
  post 'assessments/edit'

  get 'groups/showgroup'
  get 'groups/new'
  resources :groups
  get 'signup'  => 'users#new'
  resources :users

  get 'sessions/new' => 'sessions#new'


  get 'login' => 'sessions#new'
  get 'AdminLogin' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'

  resources :assessments

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
