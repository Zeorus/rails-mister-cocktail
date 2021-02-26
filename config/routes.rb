Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'cocktails#index'
  
  resources :cocktails, exept: :index do
    resources :doses, only: [:new, :create, :destroy]
  end

  resources :doses, only: [:new, :destroy]
end
