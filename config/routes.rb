Rails.application.routes.draw do
  resources :student_professor_subjects
  resources :professor_subjects
  post '/rate' => 'rater#create', :as => 'rate'
  resources :professors
  resources :subjects
  resources :home
  root to: "home#index"
  devise_for :students
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
