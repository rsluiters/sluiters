Rails.application.routes.draw do
  resources :guestbooks do
    get 'confirm'
  end

  root to: "tenants#index"

  resources :tenants





end
