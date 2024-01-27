Rails.application.routes.draw do
  get 'scheduledates/index', to: 'scheduledates#index'
  get 'scheduledates/new', to: 'scheduledates#new'
  delete 'scheduledates/:id', to: 'scheduledates#destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :scheduledates
end
