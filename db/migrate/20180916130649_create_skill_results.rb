class CreateSkillResults < ActiveRecord::Migration[5.2]
  def change
    create_table :skill_results do |t|
      t.float :value
      t.references :skill, foreign_key: true
      t.references :quiz, foreign_key: true

      t.timestamps
    end
  end
end
