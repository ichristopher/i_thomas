IThomas::Application.routes.draw do
  
  # Sets RESTful resource access/routes for all "User" objects
  # e.g., /users/1 and users/new and users/1/edit and so forth
  # Note that it sets the routes/paths, but the pages still need to 
  # be created by developer.
  # The view files are in app/views/users/show.html.erb
  # Corresponding actions are in app/controllers/users_controller.rb (e.g., def show)
  resources :users
  resources :sessions, only: [:new, :create, :destroy] # i.e., we don't need an update rest action, so no resource


  root to: 'static_pages#home'

  match '/signup',  to: 'users#new'
  # Note that the session/ is implicit for "create"; the two below override the default named routes
  match '/signin',  to: 'sessions#new'
  match '/signout', to: 'sessions#destroy', via: :delete # i.e., to use the HTTP DELETE request
  
  match '/help',    to: 'static_pages#help'
  match '/about',   to: 'static_pages#about'
  match '/contact', to: 'static_pages#contact'


  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
