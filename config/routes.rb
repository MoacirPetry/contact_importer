Rails.application.routes.draw do
  get 'contacts/index'
  post 'contacts/import'
  devise_for :users
  root 'homepage#index'
end
