Rails.application.routes.draw do
  resources :holes
  resources :course_holes
  resources :rounds
  resources :courses
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
