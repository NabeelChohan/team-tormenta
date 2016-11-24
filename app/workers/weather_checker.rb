class WeatherChecker

   include Sidekiq::Worker
    def perform 
        forecast = ForecastIO.forecast(37.8267, -122.423)
        puts forecast
    end
end


=begin 

def houston_temp_hour(hour)
    ForecastIO.forecast('29.7622163', '-95.7132529')[:hourly][:data][hour][:temperature]
end  


[108] pry(main)> def temp_feelz temp
[108] pry(main)*   case temp
[108] pry(main)*   when 0..50  
[108] pry(main)*     return 0
[108] pry(main)*   when 51..60  
[108] pry(main)*     return 1
[108] pry(main)*   when 61..75  
[108] pry(main)*     return 2
[108] pry(main)*   when 76..85  
[108] pry(main)*     return 3
[108] pry(main)*   else  
[108] pry(main)*     return 4
[108] pry(main)*   end  
[108] pry(main)* end 

houston_forecast[:hourly][:data].each do |x|
    p "#{x[:temperature]}(#{temp_feelz(x[:temperature])}) @ #{Time.at(x[:time])}"                               
end  
"

=end
