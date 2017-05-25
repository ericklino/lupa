Rails.application.routes.draw do



  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users, controllers: {sessions: "sessions"}

  #root 'home#index'

  # About
  get 'quem-somos' => 'about#index', as: :about

  # Contact
  get 'contato' => 'contacts#index', as: :contacts
  post 'contato' => 'contacts#create', as: :create_contact

  #  resources:dispositivos

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users, controllers: {sessions: "sessions"}


#  resources:dispositivos

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'feeder#index'
  get 'dispositivos' => 'devices#index', as: :list_devices


  get 'home' => 'home#index', as: :home



  #avaliacao
  get 'avaliacao/dispositivo/:id' => 'question#evaluation', as: :evaluations
  post 'avaliacao/dispositivo/:id' => 'question#create_evaluation'
  get 'minhasavaliacoes' => 'evaluations#index', as: :list_evaluations



  # reports
  get 'dispositivos/selecao' => 'reports#index', as: :device_seletion
  get 'relatorios/avaliacoes' => 'reports#evaluation', as: :report_evaluation
  get 'dispositivo/relatorio/:id' => 'reports#show', as: :report

end
