Rails.application.routes.draw do
  resources :users, only: [:index, :show, :update, :destroy, :create]
  # we don't want edit and new because those are for forms
  resources :contacts, only: [:index, :show, :update, :destroy, :create]

  resources :contact_shares, only: [:destroy, :create]
end
