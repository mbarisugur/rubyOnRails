Rails.application.routes.draw do
  resources :surveys do
    resources :questions
  end 
  resources :questions

  resources :options
  resources :feedbacks
  resources :responses
  post 'surveys/:id', to: 'surveys#createFeedback'
  mount Rswag::Ui::Engine=> "/api-docs"
  mount Rswag::Api::Engine=> "/api-docs"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  
end
