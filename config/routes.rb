Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html



  resources :hospitals do
  end

  resources :doctors do
    resources :patients do
    resources :appointments, only: :destroy
  end
end
end
