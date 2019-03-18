Rails.application.routes.draw do
  #devise_for :users
  root  'flowers#index'                       #ルートパスの指定
  resources :flowers                     #flowers_controllerに対してのresourcesメソッド
  resources :flowers do
    resources :diaries do
      resources :comments, only: [:create]
    end
  end
  resources :users, only: [:show]       #users_controllerに対してのresourcesメソッド
end