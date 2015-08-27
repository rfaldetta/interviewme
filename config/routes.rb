Rails.application.routes.draw do

  # Set root for devise
  root 'questions#index'

  # Routes for the Response_length resource:
  # CREATE
  get "/response_lengths/new", :controller => "response_lengths", :action => "new"
  post "/create_response_length", :controller => "response_lengths", :action => "create"

  # READ
  get "/response_lengths", :controller => "response_lengths", :action => "index"
  get "/response_lengths/:id", :controller => "response_lengths", :action => "show"

  # UPDATE
  get "/response_lengths/:id/edit", :controller => "response_lengths", :action => "edit"
  post "/update_response_length/:id", :controller => "response_lengths", :action => "update"

  # DELETE
  get "/delete_response_length/:id", :controller => "response_lengths", :action => "destroy"
  #------------------------------

  # Routes for the Practice_interview resource:
  # CREATE
  get "/practice_interviews/new", :controller => "practice_interviews", :action => "new"
  post "/create_practice_interview", :controller => "practice_interviews", :action => "create"

  # READ
  get "/practice_interviews", :controller => "practice_interviews", :action => "index"
  get "/practice_interviews/:id", :controller => "practice_interviews", :action => "show"

  # UPDATE
  get "/practice_interviews/:id/edit", :controller => "practice_interviews", :action => "edit"
  post "/update_practice_interview/:id", :controller => "practice_interviews", :action => "update"

  # DELETE
  get "/delete_practice_interview/:id", :controller => "practice_interviews", :action => "destroy"
  #------------------------------

  # Routes for the Question resource:
  # CREATE
  get "/questions/new", :controller => "questions", :action => "new"
  post "/create_question", :controller => "questions", :action => "create"

  # READ
  get "/questions", :controller => "questions", :action => "index"
  get "/questions/:id", :controller => "questions", :action => "show"

  # UPDATE
  get "/questions/:id/edit", :controller => "questions", :action => "edit"
  post "/update_question/:id", :controller => "questions", :action => "update"

  # DELETE
  get "/delete_question/:id", :controller => "questions", :action => "destroy"
  #------------------------------

  # Routes for the Category resource:
  # CREATE
  get "/categories/new", :controller => "categories", :action => "new"
  post "/create_category", :controller => "categories", :action => "create"

  # READ
  get "/categories", :controller => "categories", :action => "index"
  get "/categories/:id", :controller => "categories", :action => "show"

  # UPDATE
  get "/categories/:id/edit", :controller => "categories", :action => "edit"
  post "/update_category/:id", :controller => "categories", :action => "update"

  # DELETE
  get "/delete_category/:id", :controller => "categories", :action => "destroy"
  #------------------------------

  # Routes for the Practice_question resource:
  # CREATE
  get "/practice_questions/new", :controller => "practice_questions", :action => "new"
  post "/create_practice_question", :controller => "practice_questions", :action => "create"

  # READ
  get "/practice_questions", :controller => "practice_questions", :action => "index"
  get "/practice_questions/:id", :controller => "practice_questions", :action => "show"

  # UPDATE
  get "/practice_questions/:id/edit", :controller => "practice_questions", :action => "edit"
  post "/update_practice_question/:id", :controller => "practice_questions", :action => "update"

  # DELETE
  get "/delete_practice_question/:id", :controller => "practice_questions", :action => "destroy"
  #------------------------------

  devise_for :users
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
