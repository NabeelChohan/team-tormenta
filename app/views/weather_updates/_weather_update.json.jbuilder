json.extract! weather_update, :id, :zip, :date, :time1, :time2, :created_at, :updated_at
json.url weather_update_url(weather_update, format: :json)