class AddEsTitleToSkillGroup < ActiveRecord::Migration[5.2]
  def change
    add_column :skill_groups, :es_title, :string
  end
end
