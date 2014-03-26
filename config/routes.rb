VersionFourteen::Application.routes.draw do

  resources :producers

  resources :reports
  
  resources :claims do
    collection { post :import }
  end
  resources :videos do
    collection { post :import }  
  end

  root "videos#index"
  
  get "static_pages/home"
  get "static_pages/contact"
  get "static_pages/about"
end
