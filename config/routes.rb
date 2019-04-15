# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'games#index'

  get 'games/index'
  get '/throw' => 'games#throw', as: '/throw'
end
