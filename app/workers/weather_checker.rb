class WeatherChecker

   include Sidekiq::Worker
    def perform 
        forecast = ForecastIO.forecast(37.8267, -122.423)
        puts forecast
    end
end
 
account_sid = "ACde4ab873be2d64079980ed15f634db1f"
auth_token = "9640370605ee9257147b3cd62c06f1ae"
 
client = Twilio::REST::Client.new account_sid, auth_token

from = "+14159692475" # Twilio number


User.all.each do |user|
    if( !user.number.nil? )
      client.account.messages.create(
        :from => from,
        :to => user.number,
        :body => "Hey #{user.name}, welcome to Trendsetters homie"
      )
    puts "Sent message to #{user.name}"
    end
end



#google_api_key = "AIzaSyCkNWRgR6uyWaWWwI78o5vNnsw_EhyeD_k"


=begin 

def houston_temp_hour(hour)
    ForecastIO.forecast('29.7622163', '-95.7132529')[:hourly][:data][hour][:temperature]
end  


 def temp_feelz temp
   case temp
   when 0..50  
     return {:status => 0, :msg => "Yo! it's going to be cold wear something warm"}
   when 51..60  
     return  {:status => 1, :msg => "Hey sexy, it's that sweather weather today grab a scarf too!"}
   when 61..75  
    return  {:status => 2, :msg => "Perfect day to chill with your crush outside"
   when 76..85  
     return {:status => 3, :msg => "Comfortable wear it is goign to be pleasant"}
  else  
  return 4 {:status => 4, :msg => "Shorts and shirts nothing else needed"}
 end  
 end 

houston_forecast[:hourly][:data].each do |x|
    p "#{x[:temperature]}(#{temp_feelz(x[:temperature])}) @ #{Time.at(x[:time])}"                               
end  
"

=end


def zip_to_coordinates(zipcode)
    uri = "https://maps.googleapis.com/maps/api/geocode/json?address=#{zipcode}&key=AIzaSyCkNWRgR6uyWaWWwI78o5vNnsw_EhyeD_k"
    res = Net::HTTP.get_response URI(uri)
    lat = JSON.parse(res.body)["results"][0]["geometry"]["location"]["lat"]
    lng = JSON.parse(res.body)["results"][0]["geometry"]["location"]["lng"]
    return {:lat => lat, :lng => lng}
end
    
    
def temp_at_2 zip 
    ForecastIO.forecast(zip_to_coordinates(zip)[:lat], zip_to_coordinates(zip)[:lng])[:hourly][:data][9][:temperature]
end





