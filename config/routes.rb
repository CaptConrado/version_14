VersionFourteen::Application.routes.draw do
  
  resources :claims

  resources :reports

  resources :videos do
    collection { post :import }  
  end

  root "videos#index"
  get "static_pages/home"
  get "static_pages/contact"
  get "static_pages/about"
end
