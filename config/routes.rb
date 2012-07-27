SnomProvisioning::Application.routes.draw do
  resources :phones

  root :to => "home#index"

  match "/config/:mac" => "config#show"
end
