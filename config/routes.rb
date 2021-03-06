Rails.application.routes.draw do
  resources :users, :only => [:new, :show] do
    resources :questions
    resources :answers, :only => []
  end

  resources :questions, :only => [:show] do
    resources :answers
  end

  get'/' => 'home#index'
  get "/log-in" => "sessions#new"

  post "/log-in" => "sessions#create"

  get "/log-out" => "sessions#destroy", as: :log_out

end
