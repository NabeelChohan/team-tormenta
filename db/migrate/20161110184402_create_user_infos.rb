class CreateUserInfos < ActiveRecord::Migration
  def change
    create_table :user_infos do |t|
      t.string :name
      t.string :number
      t.integer :zip

      t.timestamps null: false
    end
  end
end
