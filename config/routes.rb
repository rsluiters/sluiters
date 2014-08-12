Rails.application.routes.draw do
  resources :guestbooks

  root to: "tenants#index"

  resources :tenants





end
