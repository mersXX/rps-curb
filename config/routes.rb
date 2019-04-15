# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'games#index'
  get 'games/index'
  get '/throw/:type', to: 'games#throw'
end

