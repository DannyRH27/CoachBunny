Rails.application.routes.draw do
  # get  , get, post  , get , get , patch , delete
  # INDEX, NEW, CREATE, SHOW, EDIT, UPDATE, DESTROY
  # all  , form, add  , 1   , form, change, remove
  
  root "static_pages#root"
  
  devise_for :users, defaults: {format: :json}, :controllers => { 
    :omniauth_callbacks => "users/omniauth_callbacks" 
  }

  namespace :api, defaults: {format: :json} do 
    resources :users, only: [:create]
    resources :coaches, only: [:index, :show]
    resources :sports, only: [:index]
    resources :coach_details, only: [:index, :show]
    resources :coaching_sessions, only: [:index, :create, :show, :update, :destroy]
    # resources :reviews, only: [:index, :create]
    
    resource :session, only: [:create, :destroy]              
  end


end

