Rails.application.routes.draw do
  get 'about' => "blog/pages#about", as: :about
  get 'contact' => "blog/pages#contact", as: :contact

  root to: "blog/posts#index"

  scope module: 'blog' do
    resources :posts
  end


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
