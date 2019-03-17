Rails.application.routes.draw do
  #devise_for :users
  root  'plants#index'                       #ルートパスの指定
  resources :plants                     #plants_controllerに対してのresourcesメソッド
  resources :plants do
    resources :diaries do
      resources :comments, only: [:create]
    end
  end
  resources :users, only: [:show]       #users_controllerに対してのresourcesメソッド
end