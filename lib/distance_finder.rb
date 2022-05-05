


class DistanceFinder
    def self.findDistance()
        require 'net/http'
        require 'json'
        require 'uri'

    url = 'http://api.openweathermap.org/geo/1.0/direct?q=London&limit=5&appid=749d7d75a5b2f8f2ef03870866a36cca'
    uri = URI(url)

    response = Net::HTTP.get_response(uri)
    puts res.body if res.is_a?(Net::HTTPSuccess)
    data = JSON.parse(response);
    end
    




end