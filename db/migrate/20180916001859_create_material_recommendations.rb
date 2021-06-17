class CreateMaterialRecommendations < ActiveRecord::Migration[5.2]
  def change
    create_table :material_recommendations do |t|
      t.references :material, foreign_key: true
      t.references :recommendation, foreign_key: true

      t.timestamps
    end
  end
end
