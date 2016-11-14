class WeatherUpdatesController < ApplicationController
  before_action :set_weather_update, only: [:show, :edit, :update, :destroy]

  # GET /weather_updates
  # GET /weather_updates.json
  def index
    @weather_updates = WeatherUpdate.all
  end

  # GET /weather_updates/1
  # GET /weather_updates/1.json
  def show
  end

  # GET /weather_updates/new
  def new
    @weather_update = WeatherUpdate.new
  end

  # GET /weather_updates/1/edit
  def edit
  end

  # POST /weather_updates
  # POST /weather_updates.json
  def create
    @weather_update = WeatherUpdate.new(weather_update_params)

    respond_to do |format|
      if @weather_update.save
        format.html { redirect_to @weather_update, notice: 'Weather update was successfully created.' }
        format.json { render :show, status: :created, location: @weather_update }
      else
        format.html { render :new }
        format.json { render json: @weather_update.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /weather_updates/1
  # PATCH/PUT /weather_updates/1.json
  def update
    respond_to do |format|
      if @weather_update.update(weather_update_params)
        format.html { redirect_to @weather_update, notice: 'Weather update was successfully updated.' }
        format.json { render :show, status: :ok, location: @weather_update }
      else
        format.html { render :edit }
        format.json { render json: @weather_update.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /weather_updates/1
  # DELETE /weather_updates/1.json
  def destroy
    @weather_update.destroy
    respond_to do |format|
      format.html { redirect_to weather_updates_url, notice: 'Weather update was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_weather_update
      @weather_update = WeatherUpdate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def weather_update_params
      params.require(:weather_update).permit(:zip, :date, :time1, :time2)
    end
end
