Rails.application.routes.draw do
  get '/home', to: 'home#index'
  get '/pisto', to: 'home#pisto'
  root 'home#index' 
end
  
 
  
