Rails.application.routes.draw do
  resources :legacy_users

  draw :messaging
end
