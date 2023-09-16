Rails.application.routes.draw do
  devise_for :users
  resources :grammar_points
  
  get 'home/about'
  get 'grammar_points/:id/citation', to: 'grammar_points#citation', as: :citation
  get 'grammar_points/:id/more_examples', to: 'grammar_points#more_examples', as: :more_examples

  # This will call the invalid_url action in the application_controller.rb
  # and it will redirect the user to the main page if they edit the URL to 
  # make it invalid on purpose
  get '*path', controller: 'application', action: 'invalid_url'
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"
end
