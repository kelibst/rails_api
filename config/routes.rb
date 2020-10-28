Rails.application.routes.draw do
  # devise_for :users
  namespace :api do
    namespace :v1, defaults: { format: :json } do
        resources :books
        devise_scope :user do
          post "sign_up", to: "registrations#create"
          post "sign_in", to: "sessions#create"
          delete "sign_out", to: "sessions#destroy"
        end
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
