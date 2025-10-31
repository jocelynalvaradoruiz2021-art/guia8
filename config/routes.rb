Rails.application.routes.draw do
  # Página principal
  root 'static_pages#home'

  # Rutas con nombre
  get '/help',    to: 'static_pages#help',    as: 'help'
  get '/about',   to: 'static_pages#about',   as: 'about'
  get '/contact', to: 'static_pages#contact', as: 'contact'

  # Ruta de health check
  get 'up' => 'rails/health#show', as: :rails_health_check

  # Rutas comentadas para PWA (opcional)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
end
