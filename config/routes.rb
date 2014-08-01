Rails.application.routes.draw do
  # Routes for the Enrollment resource:
  # CREATE
  get '/new_enrollment' => 'enrollments#new'
  get '/create_enrollment' => 'enrollments#create'

  # READ
  get '/enrollments' => 'enrollments#index'
  get '/enrollments/:id' => 'enrollments#show'

  # UPDATE
  get '/enrollments/:id/edit' => 'enrollments#edit'
  get '/enrollments/:id/update' => 'enrollments#update'

  # DELETE
  get '/enrollments/:id/destroy' => 'enrollments#destroy'
  #------------------------------

  # Routes for the Student resource:
  # CREATE
  get '/new_student' => 'students#new'
  get '/create_student' => 'students#create'

  # READ
  get '/students' => 'students#index'
  get '/students/:id' => 'students#show'

  # UPDATE
  get '/students/:id/edit' => 'students#edit'
  get '/students/:id/update' => 'students#update'
  get '/students/:id/add_course' => 'students#add_course'

  # DELETE
  get '/students/:id/destroy' => 'students#destroy'
  get '/students/:id/remove_course/:course_id' => 'students#remove_course'
  #------------------------------

  # Routes for the Course resource:
  # CREATE
  get '/new_course' => 'courses#new'
  get '/create_course' => 'courses#create'

  # READ
  get '/courses' => 'courses#index'
  get '/courses/:id' => 'courses#show'

  # UPDATE
  get '/courses/:id/edit' => 'courses#edit'
  get '/courses/:id/update' => 'courses#update'

  # DELETE
  get '/courses/:id/destroy' => 'courses#destroy'
  #------------------------------

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
