Rails.application.routes.draw do

  resources :contacts

  root 'home#index'
  get '/about_me', to: 'home#about_me'
  get '/contact', to: 'home#contact'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
