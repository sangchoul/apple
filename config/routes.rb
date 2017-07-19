Rails.application.routes.draw do
  #Create
  get '/posts/new' => 'posts#new'  
  #주조창에 /posts/new라고 입력이 들어오면 post controller의 new action으로 이동
  post '/posts/create' => 'posts#create'
  
  #Read
  get '/' => 'posts#index'
  get '/posts/show/:post_id' => 'posts#show'

  #Update
  get '/posts/edit/:post_id' => 'posts#edit'
  post '/posts/update/:post_id'=> 'posts#update'
  
  #Delete
  post '/posts/destroy/:post_id' => 'posts#destroy'

  #comments
  ##Create
  post '/posts/show/:post_id/comments/create' => 'comments#create'
  ##Destory
  post '/posts/show/:post_id/comments/destroy/:comment_id' => 'comments#destroy'
end  

  