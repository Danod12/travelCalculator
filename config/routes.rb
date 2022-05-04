Rails.application.routes.draw do
  get '/journey_calculator' => 'distfind#journeyCalculator'

  post '/distance_profile' => 'distfind#distanceProfileCalc'
end
