require 'distance_finder'

class DistfindController < ApplicationController

    def journeyCalculator

    end

    

    def distanceProfileCalc

    @num1 = params[:startLocation]
    @num2 = params[:endLocation]

    @distanceTravel = DistanceFinder.findDistance(@num1.to_i, @num2.to_i)


    end

end
