Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'
  root 'main#index'

  resource :main   do
    collection do
      get 'contact_us',to:'main#contact_us'
      get 'employ_job',to:'main#employ_job'
      get 'student_products',to:'main#student_products'
      get 'study_online',to:'main#study_online'
      get 'train_model',to:'main#train_model'
      get 'employ',to:'main#employ'
      get 'job',to:'main#job'
    end
  end
  resource :course  do
    collection do
      get 'major',to:'course#major'
      get 'android',to:'course#major_android'
      get 'html5',to:'course#major_html5'
      get 'java',to:'course#major_java'
      get 'php',to:'course#major_php'
      get 'ui',to:'course#major_ui'
      get 'ruby',to:'course#major_ruby'
      get 'sofrware',to:'course#major_sofrware'

    end
  end
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
