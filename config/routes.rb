Rails.application.routes.draw do
  resources :portfolios, except: [:show]
  #this is how you override the default resource value, also, you can add your own custom route method
  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'
  
  get 'about-me', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  
  resources :blogs do
    member do
      get :toggle_status
    end
  end
  
  root to: 'pages#home'
end
