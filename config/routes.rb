Rails.application.routes.draw do
  devise_for :users
  resources :posts do
    resources :comments, only: %i[create]

    member do
      patch :like, to: 'posts#like'
    end
  end

  get 'home/projects'
  get 'projects', to: 'projects#index', as: :projects
  get 'projects/chores_app'
  get 'projects/picu'
  get 'projects/portfolio'
  get 'projects/vision'
  get 'projects/christmas_bomb'


  get 'home/about'
  get 'home/contact'
  get 'resume', to: 'home#resume', as: :resume
  get 'home/download_resume'
  get 'blog', to: 'posts#index', as: :blog

  root 'home#landing'
end
