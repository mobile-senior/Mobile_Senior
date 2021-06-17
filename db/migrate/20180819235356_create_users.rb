class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.date :birthday
      t.string :gender
      t.integer :phone, limit: 8
      t.string :country
      t.string :state
      t.string :city
      t.string :education

      t.timestamps
    end
  end
end
