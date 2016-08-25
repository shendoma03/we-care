Rails.application.routes.draw do
  get 'welcome/index'
  get 'assessments/new'
  get 'assessments/quiz'
  post 'assessments/edit'

  get 'signup'  => 'users#new'
  resources :users

  get 'login' => 'sessions#new'
  get 'AdminLogin' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'

  resources :assessments

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
