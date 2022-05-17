Rails.application.routes.draw do
  resources :posts do
    resources :comments, only: %i[create]
  end

  root 'home#landing'

  get 'home/projects'
  
  get 'home/about'
  get 'home/contact'

  get 'blog', to: 'posts#index', as: :blog
end
