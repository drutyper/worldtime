Rails.application.routes.draw do
  
  get  "locations"     => "locations#index"
  get  "locations/new" => "locations#new"
  post "locations/new" => "locations#create" 


  root to: 'locations#index'
end
