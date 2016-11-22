class WeatherCheckerJob < ActiveJob::Base
  queue_as :default

  def perform(*args)
    puts 'yo' 
  end
end

WeatherCheckerJob.perform_async