Rails.application.routes.draw do

  root 'welcome#index'

  resources :articles do
  	get 'welcome/index'
  end

  resources :projects do
  	get 'welcome/index'
  end


end
