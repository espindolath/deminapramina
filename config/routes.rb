Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    resources :projetos, only: [:new, :create, :show]

  root to: "projetos#index"
end
