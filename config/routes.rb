Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # rootはlocalhost:3000にきた時にルーティング
  # resources :boards, only: [:index, :new, :create, :show, :edit, :update] 
  resources :boards
end
