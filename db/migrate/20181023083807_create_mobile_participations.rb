class CreateMobileParticipations < ActiveRecord::Migration[5.2]
  def change
    create_table :mobile_participations do |t|
      t.references :user, foreign_key: true
      t.boolean :participate

      t.timestamps
    end
  end
end
