Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # root 'welcome#index'
  scope '/api', defaults: {format: :json} do
    resources :articles, only: [:index, :show, :create]
  end
end
