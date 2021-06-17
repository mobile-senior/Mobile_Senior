class CreateSkillGroups < ActiveRecord::Migration[5.2]
  def change
    create_table :skill_groups do |t|
      t.string :title

      t.timestamps
    end
  end
end
