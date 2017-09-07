Rails.application.routes.draw do
  
  mount Ckeditor::Engine => '/ckeditor'
  devise_for :users, :skip => [:registrations]
  as :user do
    get 'users/edit' => 'devise/registrations#edit', :as => 'edit_user_registration'
    put 'users' => 'devise/registrations#update', :as => 'user_registration'
  end

  resources :posts

  root "posts#index"

  get '/sobre', to: 'pages#sobre'
  get 'tags/:tag', to: 'posts#index', as: :tag
end
