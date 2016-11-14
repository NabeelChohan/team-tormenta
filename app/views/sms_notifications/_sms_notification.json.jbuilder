json.extract! sms_notification, :id, :day_temp, :content, :precip, :user_ID, :eve_temp, :created_at, :updated_at
json.url sms_notification_url(sms_notification, format: :json)