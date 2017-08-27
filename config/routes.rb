Rails.application.routes.draw do
  devise_for :users
  # 홈페이지
  root "home#index"
  get '/' => 'home#index'
  get '/home/index' => 'home#index'
  
  # 각 페이지로 이동
  get '/home/index'
  get 'home/GOD'
  get 'home/Genre'
  get 'home/cmt' 
  
  
  # 각 게시글 쓰기
  post 'home/today_new'
  post 'home/games_new'
  post 'home/comment'
  
  get 'home/games_create'
  get 'home/today_create'
  
  # 각 게시글 보기 & 수정 & 삭제
  get '/home/show/:game_id' => 'home#show'
  get '/home/update/:game_id' => 'home#update'
  get '/home/edit/:game_id' => 'home#edit'
  get '/home/destroy/:game_id' => 'home#destroy'
  get 'home/comment_delete/:comment_id' => 'home#comment_delete'
  
  #노가다
  get '/home/post_1'
  get '/home/post_2'
  get '/home/post_3'
  get '/home/post_4'
  get '/home/post_5'
  get '/home/post_6'
  
  
  #리뷰페이지로

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
