Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root to: 'pages#home'
  get 'about', to: 'pages#about'
  get 'garden', to: 'pages#garden'
  get 'projects', to: 'pages#projects'
end
