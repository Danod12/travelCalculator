require 'distance_finder'

class DistfindController < ApplicationController

    def journeyCalculator

    end

    
    def distanceProfileCalc
    @data = DistanceFinder.findDistance()


    end

end
