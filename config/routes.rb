Rails.application.routes.draw do
  get 'home/index'

  resources :cards, only: ['index', 'create'] do
    collection do
      delete :destroy_all
    end
  end

  root 'cards#index'
end
