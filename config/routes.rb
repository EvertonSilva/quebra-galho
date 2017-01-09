Rails.application.routes.draw do

  resources :usuarios
  resources :habilidades
  resources :categorias
  resources :ferramentas
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => "ferramentas#index"


  #get "/pages/home"
  # get "/categoria", to: "categoria#index", as: "categoria"
  # get "/habilidade", to: "habilidade#index", as: "habilidade"
end
