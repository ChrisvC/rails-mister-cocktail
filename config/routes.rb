Rails.application.routes.draw do
  get 'doses/new'

  get 'doses/create'

  get 'doses/destroy'

  get 'doses/set_dose'

  get 'doses/dose_params'

  get 'cocktails/index'

  get 'cocktails/show'

  get 'cocktails/new'

  get 'cocktails/create'

  get 'cocktails/set_cocktail'

  get 'cocktails/cocktail_params'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :cocktails, only: [:index, :show, :new, :create, :delete, :destroy] do
    resources :doses, only: [:new, :create]
    resources :reviews, only: [:new, :create]
  end
  root "cocktails#index"
  resources :reviews, only: [:destroy]
  resources :doses, only: [:destroy]
end
