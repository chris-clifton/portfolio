Rails.application.routes.draw do
  resources :posts do
    resources :comments, only: %i[create]

    member do
      patch :like, to: 'posts#like'
    end
  end

  root 'home#landing'

  get 'home/projects'
  get 'projects', to: 'projects#index', as: :projects
  get 'projects/chores_app'
  get 'projects/picu'
  get 'projects/portfolio'
  get 'projects/vision'


  get 'home/about'
  get 'home/contact'
  get 'resume', to: 'home#resume', as: :resume
  get 'home/download_resume'
  get 'blog', to: 'posts#index', as: :blog
end
