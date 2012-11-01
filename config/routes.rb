Photoprops::Application.routes.draw do
  resources :photos do
    resources :props, :only => [:create, :destroy]
  end
  root :to => 'photos#index'
end
