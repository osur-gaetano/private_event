Rails.application.routes.draw do
  root "events#index"

  # resources :users do
  #   resources :events

  # end
  #
  resources :events

  devise_for :users, controllers: {
    sessions: 'users/sessions'
    }
end
