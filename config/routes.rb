Rails.application.routes.draw do
  get '/articles/:id/edit', to: 'articles#edit', as: :edit_article

  resources :articles, only: [:new, :index,:show, :update]

  put 'articles/:id', to: 'articles#update'
  post 'articles', to: 'articles#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
