Rails.application.routes.draw do
  root "movies#index"

  resources :actors

  resources :movies do
    # Castings annidati al film; CRUD essenziale per UI
    resources :castings, only: [ :new, :create, :edit, :update, :destroy ]
  end
end
