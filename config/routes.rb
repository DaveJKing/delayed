Rails.application.routes.draw do
  resources :users
  
  
  root to: 'newsletters#index'
  
  
  resources :newsletters do
    member { post :deliver }
  end

end
