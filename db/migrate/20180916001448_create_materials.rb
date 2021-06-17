class CreateMaterials < ActiveRecord::Migration[5.2]
  def change
    create_table :materials do |t|
      t.string :title
      t.string :description
      t.references :user, foreign_key: true
      t.text :content
      t.string :type

      t.timestamps
    end
  end
end
