Rails.application.routes.draw do
  get 'iniciar_sesion/new'

  get 'iniciar_sesion/create'

  get 'iniciar_sesion/destroy'

  #get 'sessions/new'

  get 'sessions/create'

  get 'sessions/destroy'

  get 'recpwd', to:'acceso#recpwd'

  get 'control', to:'admin#control'

  get 'adminuniv', to:'admin#adminUniv'

  get 'usuario', to:'admin#usuario'

  get 'movilidad', to:'estudiante#movilidad'

  get 'universidades', to:'estudiante#universidades'

  get 'avisos', to:'estudiante#avisos'

  get 'coach', to:'estudiante#coach'

  get 'perfil', to:'estudiante#perfil'

  get 'nuevoPerfil', to:'nuevo_usuario#misdatos'

  get 'nuevoPerfil/4', to:'nuevo_usuario#mdeconomia'

  post 'nuevoPerfil/2', to:'nuevo_usuario#mdidiomas'

  get 'nuevoPerfil/3', to:'nuevo_usuario#mdmovilidad'

  get 'llenarBD', to:'student#llenarBD'

  post 'validacion', to:'nuevo_usuario#validacion'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'
    
  resources :sessions, only: [:new, :create, :destroy]
  get '/signin',  to: 'sessions#new'
  get '/signout', to: 'sessions#destroy'
    
  #resources :student
  root 'sessions#new'
  #root 'student#index'
  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
