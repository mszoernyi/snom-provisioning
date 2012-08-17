SnomProvisioning::Application.routes.draw do
  resources :unknown_phones

  resources :phones

  root :to => "home#index"

  match "/config/:mac" => "config#show"
end
