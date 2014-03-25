VersionFourteen::Application.routes.draw do
  
  

  resources :reports

  resources :videos do
    collection { post :import }  
    resources :claims
  end

  root "videos#index"
  get "static_pages/home"
  get "static_pages/contact"
  get "static_pages/about"
end
