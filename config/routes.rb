Rails.application.routes.draw do
  get 'password_resets/new'

  get 'password_resets/create'

  get 'password_resets/edit'

  get 'password_resets/update'

  get 'sessions/new'

  get 'sessions/create'

  get 'sessions/destroy'

  get 'account_activations/edit'

  root 'static_pages#home'
  get  'help'          => 'static_pages#help'
  get  'about'         => 'static_pages#about'
  get  'contact'       => 'static_pages#contact'
  resources :users

 
end
