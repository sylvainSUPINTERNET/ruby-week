Rails.application.routes.draw do


  get 'hashtags_list/:hashtag' => 'hashtags#show'

  get 'post_show' => 'post#show'

  post 'post_create' => 'post#create'

  get 'post/edit'

  get 'post/delete'

  get '/post/like/:id_post' => 'post#like'

 

  root 'pages#index'

  
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
