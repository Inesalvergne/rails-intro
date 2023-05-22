Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # The root prefix is used to define the action and page that we load on the base URL
  root 'pages#home', as: :home
  # We can give aliases to our routes to change the names of the prefix
  get '/about', to: 'pages#about', as: :about
  get '/contact', to: 'pages#contact'

  # 💡 Run "rails routes" in your terminal to get a view of all your routes!
end
