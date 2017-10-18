Rails.application.routes.draw do
  root 'subs#index'
  resources :subs do
    resources :topics
  end

  scope 'topics/:topic_id', as: 'topic' do
    resources :comments, only: [:new, :create]
  end
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
