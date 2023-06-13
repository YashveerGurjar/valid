Rails.application.routes.draw do

  root "articles#index"
  resources :books  
  resources :articles do
    resources :feedbacks
  end
end