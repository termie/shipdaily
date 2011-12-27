Shipdaily::Application.routes.draw do
  get "static/index"

  get "static/about"

  root :to => "static#index"
  match "/auth/:provider" => "sessions#new", :as => "login"
  match "/logout" => "sessions#destroy", :as => "logout"
  match "/auth/:provider/callback" => "sessions#create"
  match "/auth/failure" => "sessions#failure"
end
