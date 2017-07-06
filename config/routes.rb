Rails.application.routes.draw do


  get 'user/profile'

  get 'hashtags_list/:hashtag' => 'hashtags#show'

  get 'post_show' => 'post#show'

  post 'post_create' => 'post#create'

  get 'post/edit'

  get 'post/delete'

  get '/post/like/:id_post' => 'post#like'


  get '/user/profile/:id' => 'user#profile'
 

  root 'pages#index'

  
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
