Rails.application.routes.draw do
  post '/rate' => 'rater#create', :as => 'rate'
  resources :professors
  resources :subjects
  root to: "subjects#index"
  devise_for :students
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
