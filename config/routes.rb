R20130312Flirt::Application.routes.draw do
  root :to => 'home#index'
  resources :subscribers, :only => [:new, :create]
end
