class CreateSkillGroupResults < ActiveRecord::Migration[5.2]
  def change
    create_table :skill_group_results do |t|
      t.float :value
      t.references :skill_group, foreign_key: true
      t.references :quiz, foreign_key: true

      t.timestamps
    end
  end
end
