KsbyggWeb::Application.routes.draw do
  root 'home#home'

  namespace :admin do
    resources :dashboard, only: [:index]
    resources :gallery_photos
  end

  devise_for :users

  get 'home', to: 'home#home'
  get 'about_us', to: 'information_pages#about_us'
  get 'employee', to: 'information_pages#employee'
  get 'policy', to: 'information_pages#policy'
  get 'gallery', to: 'information_pages#gallery'
end
