Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'custom_sessions'
  }
  # outras rotas podem estar aqui
  resources :tasks
end
