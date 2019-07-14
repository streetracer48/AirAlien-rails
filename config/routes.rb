Rails.application.routes.draw do
 root 'pages#home'
 devise_for  :users,
 path: '',
 path_names: { sign_in: 'login', sign_out: 'logout', edit: 'profile', sign_up: 'registration', confirmations: 'confirmation' },
 controllers: { omniauth_callbacks: 'omniauth_callbacks'}


resources :users, only:[:show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
resources :rooms, except:[:edit] do
  member do 
    get 'listing'
    get 'pricing'
    get 'description'
    get 'photo_upload'
    get 'amenities'
    get 'location'
    get 'preload'
    get 'preview'
  end
   resources :photos, only: [:create, :destroy]
   resources :reservations, only: [:create]
end

get '/your_trips' => 'reservations#your_trips'
end
