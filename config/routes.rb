Rails.application.routes.draw do
  get 'session/new'
  post 'session/new'
  get 'session/create'
  get 'session/destroy'
  

  get 'estadisticas/show'
  post 'estadisticas/estas'
  post 'estadisticas/estasp'
  
  get 'confirm/new'

  post 'trade/new'
  
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  root 'productos#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  #resources :comentarios

  post 'ofertas/new' => 'ofertas#create'
  resources :ofertas
  post 'comentarios/new' => 'comentarios#create'
  resources :comentarios
  get 'usuarios/destroy'
  post 'usuarios/destroy'
  resources :productos
  resources :usuarios
  resources :categorias 

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
