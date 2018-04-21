Rails.application.routes.draw do
  
  devise_for :users
  #devise_for :users
  
  resources :tasks
  root to: "tasks#index"

   if Rails.env.development?
     mount LetterOpenerWeb::Engine, at: "/letter_opener"
   end
   
end