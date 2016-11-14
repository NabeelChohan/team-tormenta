class CreateWeatherUpdates < ActiveRecord::Migration
  def change
    create_table :weather_updates do |t|
      t.integer :zip
      t.date :date
      t.time :time1
      t.string :time2

      t.timestamps null: false
    end
  end
end
