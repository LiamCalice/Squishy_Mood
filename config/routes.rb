Rails.application.routes.draw do
    root 'stickers#index'
    resources :stickers
    resources :categories, only: [:new, :create]
end
