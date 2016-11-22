class WeatherChecker

   include Sidekiq::Worker
    def perform 
        forecast = ForecastIO.forecast(37.8267, -122.423)
        puts forecast
    end
end


