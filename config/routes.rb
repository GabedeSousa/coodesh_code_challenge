require 'sidekiq/web'
Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # root 'welcome#index'
  mount Sidekiq::Web => '/sidekiq'
  scope '/api', defaults: {format: :json} do
    resources :articles, only: [:index, :show, :create, :update, :destroy]
  end
end
