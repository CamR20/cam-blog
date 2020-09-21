Rails.application.routes.draw do

  devise_for :authors
  get 'home/index'
  root to: "readers/home#index"
  get '/blog/:id' => 'readers/posts#show', as: :blog_post

  scope module: 'authors' do
    resources :posts do
      resources :elements
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
