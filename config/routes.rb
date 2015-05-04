Rails.application.routes.draw do
  resources :pawnshop_requests, only: %w(index new create)

  root "pawnshop_requests#index"

  devise_for :admin, {
    controllers: {
      sessions: 'admin/admins/sessions'
    }
  }

  namespace :admin do
    root "pawnshop_requests#index"
  end
end
