Spree::Core::Engine.routes.draw do

  namespace :admin do
    resources :consultations
  end

  # Add your extension routes here
end
