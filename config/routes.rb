# frozen_string_literal: true

Rails.application.routes.draw do
  root to: "authors#index"
  resources :authors do
    resources :books
  end
  namespace "api" do
    namespace "v1" do
      resources :posts
    end
  end
end
