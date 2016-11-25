Rails.application.routes.draw do
  get 'band/index_band'

  get 'question/evaluation'

  get 'device/index_device'

  get 'device_controller/index_device'

  get 'home/index'

  get 'home/test' => 'home#test', as: :test_home



  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users, controllers: {sessions: "sessions"}


#  resources:dispositivos

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'band#index_band'
  get 'dispositivos' => 'devices#index_device', as: :devices

  get 'home' => 'home#index', as: :home




  #avaliacao
  get 'avaliacao' => 'question#evaluation', as: :evaluations
  post 'avaliacao' => 'question#create_evaluation'
  get 'minhasavaliacoes' => 'evaluation#list_evaluation'


  # reports
  get 'dispositivos/selecao' => 'reports#index', as: :device_seletion
  get 'relatorios/avaliacoes' => 'reports#evaluation', as: :report_evaluation
  get 'dispositivo/relatorio/:id' => 'reports#show', as: :report

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
