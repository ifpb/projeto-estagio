Rails.application.routes.draw do
  resources :proposta_tccs
  get 'orientacao/index'

  resources :plano_atividades
  resources :alunos



    get '/consulta', to: 'consultas#index'
    post '/consulta', to: 'consultas#consultar'




    get    '/login',   to: 'sessions#new'
    post   '/login',   to: 'sessions#create'
    delete '/logout',  to: 'sessions#destroy'
    get '/perfil',  to: 'sessions#escolheperfil'
    post '/perfil',  to: 'sessions#perfilescolhido'

  resources :ata_defesas do
    resource :download, only: [:show]
  end
  resources :tccs
  resources :usuarios
  get '/usuarios', to: 'usuarios#orientacao'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
