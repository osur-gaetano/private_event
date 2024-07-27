Rails.application.routes.draw do
  root "events#index"

  resources :events do
    resources :attendee_events
  end

  resources :attendee_events,only: [:new]

  devise_for :users, controllers: {
    sessions: 'users/sessions'
    }
end
