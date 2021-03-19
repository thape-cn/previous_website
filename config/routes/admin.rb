namespace :admin do
  root 'home#show', as: 'root'
  resources :home, only: [:show, :edit, :update]
  resource :tail_home, only: [:edit, :update]
  resource :about_page, only: [:edit, :update]
  resource :work_type_page, only: [:edit, :update]
  resources :about, only: [:show, :edit, :update]
  resources :people do
    collection do
      post :update_positions
    end
    member do
      patch :top
      patch :bottom
      patch :up
      patch :down
      delete :destory_city_people
    end
  end
  resources :seos, only: [:index, :update]
  resources :cities, except: [:destroy, :show]
  resources :map_contacts, only: [:index, :edit, :update]
  resources :users, except: [:show, :edit, :update]
  resources :service_files, only: [:show, :edit, :update]
  resources :cases do
    member do
      patch :top
      patch :bottom
      patch :up
      patch :down
      delete :destory_picture
    end
  end
  resources :works do
    collection do
      post :update_positions
    end
    member do
      patch :top
      patch :bottom
      patch :up
      patch :down
      delete :destory_picture
    end
  end
  resources :infos do
    member do
      patch :top
      patch :bottom
      patch :up
      patch :down
    end
    collection do
      post :upload
    end
  end
  resources :pictures, except: [:show]
  resources :message, only: [:index, :show, :destroy]
  resources :portfolios, except: [:show]
  resources :publications, except: [:show]
  get '/login', to: 'sessions#new'
  post '/login', to:'sessions#create'
  delete '/logout', to: 'sessions#destroy'
end
