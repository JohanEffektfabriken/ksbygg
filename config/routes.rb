KsbyggWeb::Application.routes.draw do
  root 'home#home'

  get 'home', to: 'home#home'
  get 'about_us', to: 'information_pages#about_us'
  get 'employee', to: 'information_pages#employee'
  get 'policy', to: 'information_pages#policy'
  get 'projects', to: 'information_pages#projects'
end
