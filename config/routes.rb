Rails.application.routes.draw do
  
  resources :tasks
  root to: "tasks#index"

  devise_for :users
  
 # if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
#  end

   
end