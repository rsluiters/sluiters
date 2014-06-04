Rails.application.routes.draw do
  root to: "tenants#index"

  resources :tenants





end
