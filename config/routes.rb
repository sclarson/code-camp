Codecamp::Application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'
  root :to => 'high_voltage/pages#show', :id => 'home'

  #Speakers
  resources :speakers, :only => [ :show, :index ]

  #Sessions
  resources :sessions, :only => [ :show, :index ]

  #Schedule
  get '/schedule', to: 'schedule#index'

  get 'browser' => 'browser#index'


end
