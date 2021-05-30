Rails.application.routes.draw do
  
  namespace :api do 
    namespace :v1 do 
      resources :rescues do
        resources :dogs
      end
    end
  end
  
end


