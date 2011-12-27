Shipdaily::Application.routes.draw do
  root :to => "sessions#new"
  
  match "/auth/:provider/callback" => "sessions#create", :as => "login"
  match "/logout" => "sessions#destroy", :as => "logout"
  match "/auth/failure" => "sessions#failure"
end
