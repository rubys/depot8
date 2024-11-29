Rails.application.routes.draw do
  fly_atc_scope = ENV.fetch("FLY_ATC_SCOPE", "")

  unless fly_atc_scope == ""
    mount ActionCable.server => "/#{fly_atc_scope}/cable"
  end

  scope fly_atc_scope do
    get "atc/index"
    resources :products
    # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

    # Defines the root path route ("/")
    if fly_atc_scope == ""
      root "atc#index"
    else
      root "products#index"
    end
  end

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
end
