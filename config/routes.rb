Rails.application.routes.draw do
mount Attachinary::Engine => "/attachinary"

root to: 'pages#home'

resources :collections, only: [:index] do
  resources :shoes, only: [:new, :index, :show, :update]
end

end
