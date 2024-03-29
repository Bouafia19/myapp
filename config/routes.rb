Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  scope "(:locale)", locale: /#{I18n.available_locales.join("|")}/ do
    root 'welcome#index'
    resources :welcomes
    resources :contacts, only: [:new, :create]
    get 'index', to: 'welcome#index'
  end

end
