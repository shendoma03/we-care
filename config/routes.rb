Rails.application.routes.draw do
  get 'welcome/index'
  get 'assessments/new'
  get 'assessments/quiz'

 post 'assessments/edit'

  root 'welcome#index'
  resources :assessments

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
