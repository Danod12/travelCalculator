require 'distance_finder'

class DistfindController < ApplicationController
#adding a commit comment
    def journeyCalculator

    end

    
    def distanceProfileCalc
    @data = DistanceFinder.findDistance()


    end

end
