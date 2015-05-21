Rails.application.routes.draw do

  root to: "static_pages#root"

  get "/stats", to: "static_pages#stats"
  get "/history", to: "static_pages#history"
  get "/media", to: "static_pages#media"
  get "/contact", to: "static_pages#contact"
  get "/admin", to: "static_pages#admin"


  resources :teams do
    member :players
  end

end
