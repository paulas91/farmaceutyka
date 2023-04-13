# frozen_string_literal: true

Rails.application.routes.draw do

  root "syrups#index"
  resources :syrups
end
