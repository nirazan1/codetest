Rails.application.routes.draw do
  root to: redirect('/schedulings')
  resources :schedulings, only: [:index, :show]
  resource :session, only: [:new, :create, :destroy]

  namespace :api, defaults: { format: :json } do
    resources :schedulings, only: [:index, :show]
  end
end
