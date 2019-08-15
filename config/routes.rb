# frozen_string_literal: true

Rails.application.routes.draw do
  resources :books
  resources :authors
  namespace "api" do
    namespace "v1" do
      resources :posts
    end
  end
end
