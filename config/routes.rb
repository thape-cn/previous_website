Rails.application.routes.draw do
  root 'static_pages#homes'
  get 'search', to: 'search#query'
  localized do
    resources :management, only: [:index, :show]
    resources :designing, only: [:index, :show]
    get '/people/:id', to: (redirect do |params, req|
      person = Person.find_by(id: params[:id]) || Person.find_by!(url_name: params[:id])
      if person.category == 1
        "/#{params[:locale]}/management/#{params[:id]}"
      else
        "/#{params[:locale]}/designing/#{params[:id]}"
      end
    end)

    resources :infos, only: [:index, :show], path: :news
    resources :cases, only: [:index, :show]

    get 'homephone', to: 'static_pages#homephone'
    get 'home', to: 'static_pages#home'
    get 'about-us', to: 'static_pages#about_us'
    get 'personal', to: 'static_pages#personal'
    get 'news-list', to: redirect { |params, req| "/#{params[:locale]}/news" }
    get '/node/:id', to: redirect { |params, req| "/#{params[:locale]}/news/#{params[:id]}" }
    get 'info', to: 'static_pages#info'
    get 'case', to: 'static_pages#case'
    get '/case/jianzhu/:id', to: redirect { |params, req| "/#{params[:locale]}/cases/#{params[:id]}" }
    get '/case/jingguan/:id', to: redirect { |params, req| "/#{params[:locale]}/cases/#{params[:id]}" }
    get '/case/shinei/:id', to: redirect { |params, req| "/#{params[:locale]}/cases/#{params[:id]}" }

    get 'service', to: 'static_pages#service'
    get 'biz-map', to: 'biz_maps#index'
    resources :biz_maps, only: %i[] do
      member do
        get :modal
      end
    end


    get 'privacy', to: 'static_pages#privacy'
    get 'disclaimer', to: 'static_pages#disclaimer'
    get 'statement', to: 'static_pages#statement'

    get 'building', to: "services#building"
    get 'interior', to: "services#interior"
    get 'planning', to: "services#planning"
    get 'landscape', to: "services#landscape"
    get 'vetting', to: "services#vetting"
    get 'consluting', to: "services#consluting"
    get 'vr-tech', to: "services#vrtech"

    get '/service/:name', to: redirect { |params, req| "/#{params[:locale]}/#{params[:name]}" }

    get 'banner', to: 'static_pages#banner'
  end
  get '/service/:name', to: redirect { |params, req| "/cn/#{params[:name]}" }

  draw :admin

  resources :tianhua2019s, only: [:show, :index]

  resource :wechat, only: [:show, :create]
  resource :wechat_hulaquan, only: [:show, :create]
end
