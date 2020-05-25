# frozen_string_literal: true

Rails.application.routes.draw do
  root 'links#index'

  devise_for :users
  resources :links do
    member do
      put 'like', to: 'links#upvote'
      put 'dislike', to: 'links#downvote'
    end
  end
end
