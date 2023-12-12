# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do

      resources :clients, only: [:index]
      resources :stocks, only:[:index] do
        resources :stock_details
      end

      resources :preorders do
        collection do
          get 'filter/status', to: 'preorders#filter_by_order_status'
          get 'filter/date', to: 'preorders#filter_by_order_date'
        end
      end
      resources :trucks, only: [:index]
      resources :deliveries, only: %i[index show create]

    end
  end

  devise_for :users, path: '', path_names: {
                                 sign_in: 'login',
                                 sign_out: 'logout',
                                 registration: 'signup'
                               },
                     controllers: {
                       sessions: 'users/sessions',
                       registrations: 'users/registrations'
                     }
end
