Rails.application.routes.draw do
 root :to => 'habits#new'

 resources :habits
 
end
