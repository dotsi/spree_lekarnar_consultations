Spree::Core::Engine.routes.draw do

  resources :consultations, path: "svetovanje" do
    # get '/svetovanje', to: 'consultations#index'
    # get '/svetovanje/:id', to: 'consultations#show', as: :consultation

    # scope(:path_names => { :new => "novo", :edit => "uredi" }) do
    #   resources :consultations, :path => "svetovanje"
    # end

    resources :consultation_requests, path: "sporocilo"
  end


  namespace :admin do
    # Used for destroying records
    resources :consultation_classifications, as: :classifications, only: :destroy

    resources :consultations do
      resources :consultation_classifications,
                as: :classifications,
                only: [:index, :new, :create, :destroy]
    end
  end

end
