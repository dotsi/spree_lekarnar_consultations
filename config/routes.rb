Spree::Core::Engine.routes.draw do

  namespace :admin do
    # Used for destroying records
    resources :consultation_classifications, as: :classifications

    resources :consultations do
      resources :consultation_classifications,
                as: :classifications,
                only: [:index, :create, :destroy]
    end
  end

end
