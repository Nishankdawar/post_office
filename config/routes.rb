Rails.application.routes.draw do
  get '/' => 'home#index'
  get '/insert' => 'home#insert'
  get '/delete' => 'home#delete'
  get '/show' => 'home#show'
  post '/insert_customer' => 'home#insert_customer'
  post '/insert_money_exchange' => 'home#insert_money_exchange'
  post '/insert_pobox' => 'home#insert_pobox'
  post '/insert_post_type' => 'home#insert_post_type'
  post '/insert_postoffice_staff' => 'home#insert_postoffice_staff'
  post '/insert_service_payment' => 'home#insert_service_payment'
  post '/insert_postoffice' => 'home#insert_postoffice'
  post '/insert_staff_do_money' => 'home#insert_staff_do_money'
  post '/insert_staff_do_service' => 'home#insert_staff_do_service'
  post '/insert_staff' => 'home#insert_staff'
  post '/insert_telephone' => 'home#insert_telephone'
  post '/delete_customer' => 'home#delete_customer'
  post '/delete_money_exchange' => 'home#delete_money_exchange'
  post '/delete_pobox' => 'home#delete_pobox'
  post '/delete_post_type' => 'home#delete_post_type'
  post '/delete_postoffice_staff' => 'home#delete_postoffice_staff'
  post '/delete_service_payment' => 'home#delete_service_payment'
  post '/delete_postoffice' => 'home#delete_postoffice'
  post '/delete_staff_do_money' => 'home#delete_staff_do_money'
  post '/delete_staff_do_service' => 'home#delete_staff_do_service'
  post '/delete_staff' => 'home#delete_staff'
  post '/delete_telephone' => 'home#delete_telephone'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

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
