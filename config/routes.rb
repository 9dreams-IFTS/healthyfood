Rails.application.routes.draw do
  get '/home', to: 'home#index', as:"home"
  get '/pisto', to: 'home#pisto' , as:"pisto"
  get '/ricette', to:'home#ricette', as:'ricette'
  get '/consegne', to:'home#consegne', as:'consegne'
  get '/diete', to:'home#diete', as:'diete'
  get '/contatti', to:'home#contatti', as:'contatti'
  root 'home#index' 
end
  
 
  
