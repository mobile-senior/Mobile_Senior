Rails.application.routes.draw do
  LOCALES = /pt\-BR|es/

  scope "(:locale)", locale: LOCALES do
    devise_for :masters, ActiveAdmin::Devise.config
    # ActiveAdmin.routes(self)
    devise_for :users

    require "sidekiq/web"
    if Rails.env.production?
      Sidekiq::Web.use Rack::Auth::Basic do |username, password|
        username == "mobilesenior" && password == "jan2019*"
      end
    end
    mount Sidekiq::Web, at: "/sidekiq"

    # main pages
    get 'home/educator', as: 'educator_home'
    get 'home/senior', as: 'senior_home'
    get 'home/credits', as: 'creditos'
    get 'home/info', as: 'info'
    get 'home/show_quiz_result', as: 'show_quiz_result'

    post 'message/create', as: 'message_send', to: 'messages#create'

    post '/create_group_with_users', as: 'create_group', to: 'groups#create_group_with_users'
    post '/update_users_of_group', as: 'update_group', to: 'groups#update_users_of_group'

    post '/recommend_material_to_user', as: 'recommend_material_to_user', to: 'recommendations#recommend_material_to_user'

    get '/participate', as: 'participate', to: 'home#participate'

    # question question_answers
    resources :question_answers
    resources :materials
    resources :educator_materials, controller: 'materials'
    resources :recommendations, only: [:show]
  end

  root to: 'home#index'
end
