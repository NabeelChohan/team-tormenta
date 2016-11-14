class CreateSmsNotifications < ActiveRecord::Migration
  def change
    create_table :sms_notifications do |t|
      t.integer :day_temp
      t.string :content
      t.integer :precip
      t.integer :user_ID
      t.integer :eve_temp

      t.timestamps null: false
    end
  end
end
