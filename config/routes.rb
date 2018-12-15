Rails.application.routes.draw do

  resources :foods do
    resources :reviews
  end
end
