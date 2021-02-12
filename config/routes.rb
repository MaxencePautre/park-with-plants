Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :gardens do 
    resources :plants, only: :create
  end
  
  resources :plants, only: :destroy

  resources :plants, only: [] do
    resources :plant_tags, only: [:new, :create]
  end
  
  resources :plant_tags, only: :destroy

end