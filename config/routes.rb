Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root to: 'pages#home'
  get 'code', to: 'pages#code'
  get 'dance', to: 'pages#dance'
  get 'now', to: 'pages#now'

  # Old pages now live inside the Code and Dance pages.
  get 'about', to: redirect('/code#about')
  get 'projects', to: redirect('/code#work')
  get 'contact', to: redirect('/code')
  get 'garden', to: redirect('/dance')
end
