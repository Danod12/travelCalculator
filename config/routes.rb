Rails.application.routes.draw do
  resources :travel_logs
root 'travel_logs#index'

  get '/journey_calculator' => 'distfind#journeyCalculator'

  post '/distance_profile' => 'distfind#distanceProfileCalc'
end
