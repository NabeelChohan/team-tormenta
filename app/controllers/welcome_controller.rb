class WelcomeController < ApplicationController
  def index
    WeatherChecker.perform_async
  end
end
