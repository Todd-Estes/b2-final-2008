Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html



  resources :hospitals do
  end

  # delete '/appointments/:doctor_id/:patient_id', to: 'appointments#destroy'


  resources :doctors, only: :show do
    resources :appointments, only: :destroy
  end
end
