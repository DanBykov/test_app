Rails.application.routes.draw do
  resources :pawnshop_requests, only: %w(index new create)

  root "pawnshop_requests#index"
end
