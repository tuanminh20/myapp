# frozen_string_literal: true

Rails.application.routes.draw do
  root 'static_pages#home'
  get '/contact-us', to: 'static_pages#contact'
  get '/product-details', to: 'products#show'
end
