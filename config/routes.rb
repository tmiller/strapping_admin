StrappingAdmin::Application.routes.draw do
  root to: 'industries#index'
  resources :industries
end
