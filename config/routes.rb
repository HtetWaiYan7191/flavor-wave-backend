# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :preorders 
        get 'preorders/filter/status', to: 'preorders#filter_by_order_status'
        get 'preorders/filter/date', to: 'preorders#filter_by_order_date'
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
