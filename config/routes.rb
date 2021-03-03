# frozen_string_literal: true

Rails.application.routes.draw do
  root 'static_pages#home'
  get '/contact-us', to: 'static_pages#contact'
  get '/product-details', to: 'products#show'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
